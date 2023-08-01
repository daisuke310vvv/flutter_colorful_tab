import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorful Tab Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Colorful Tab Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title});

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  Widget _pageView(int index) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, i) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text('Tab ${index + 1} - item no $i')),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorfulTabBar(
              tabs: [
                TabItem(
                    title: Row(children: [
                      Icon(Icons.home_outlined),
                      SizedBox(width: 8),
                      Text('Home')
                    ]),
                    color: Colors.red.shade600),
                TabItem(
                    title: Row(children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(width: 8),
                      Text('Favorite')
                    ]),
                    color: Colors.orange.shade600),
                TabItem(
                    title: Row(children: [
                      Icon(Icons.search_outlined),
                      SizedBox(width: 8),
                      Text('Search')
                    ]),
                    color: Colors.lime.shade600),
                TabItem(
                    title: Row(children: [
                      Icon(Icons.settings_outlined),
                      SizedBox(width: 8),
                      Text('Settings')
                    ]),
                    color: Colors.blue.shade600),
                TabItem(
                    title: Row(children: [
                      Icon(Icons.devices_other_outlined),
                      SizedBox(width: 8),
                      Text('Others')
                    ]),
                    color: Colors.purple.shade600),
              ],
              onTap: (_) {},
              controller: _tabController,
            ),
            ColorfulTabBar(
              indicatorHeight: 6,
              verticalTabPadding: 0.0,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              selectedHeight: 48,
              unselectedHeight: 40,
              tabs: [
                TabItem(color: Colors.red, title: Text('Tab 1 - Home')),
                TabItem(color: Colors.green, title: Text('Tab 2 - Favorite')),
                TabItem(color: Colors.orange, title: Text('Tab 3 - Search')),
                TabItem(color: Colors.blue, title: Text('Tab 4 - Settings')),
                TabItem(color: Colors.purple, title: Text('Tab 5 - Others')),
              ],
              onTap: (_) {},
              controller: _tabController,
            ),
            ColorfulTabBar(
              selectedHeight: 64,
              unselectedHeight: 48,
              tabs: [
                TabItem(
                    title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_outlined),
                          SizedBox(width: 8),
                          Text('Home')
                        ]),
                    color: Colors.red.shade600),
                TabItem(
                    title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_outline),
                          SizedBox(width: 8),
                          Text('Favorite')
                        ]),
                    color: Colors.red.shade600),
                TabItem(
                    title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_outlined),
                          SizedBox(width: 8),
                          Text('Search')
                        ]),
                    color: Colors.lime.shade600),
                TabItem(
                    title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings_outlined),
                          SizedBox(width: 8),
                          Text('Settings')
                        ]),
                    color: Colors.blue.shade600),
                TabItem(
                    title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.devices_other_outlined),
                          SizedBox(width: 8),
                          Text('Others')
                        ]),
                    color: Colors.purple.shade600),
              ],
              onTap: (_) {},
              controller: _tabController,
            ),
            ColorfulTabBar(
              alignment: TabAxisAlignment.start,
              tabs: [
                TabItem(
                    title: Icon(Icons.home_outlined),
                    color: Colors.red.shade600),
                TabItem(
                    title: Icon(Icons.favorite_outline),
                    color: Colors.orange.shade600),
                TabItem(
                    title: Icon(Icons.search_outlined),
                    color: Colors.lime.shade600),
                TabItem(
                    title: Icon(Icons.settings_outlined),
                    color: Colors.blue.shade600),
                TabItem(
                    title: Icon(Icons.devices_other_outlined),
                    color: Colors.purple.shade600),
              ],
              onTap: (_) {},
              controller: _tabController,
            ),
            ColorfulTabBar(
              alignment: TabAxisAlignment.end,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white30,
              tabs: [
                TabItem(
                    title: Icon(Icons.home_outlined),
                    color: Colors.blue.shade600,
                    unselectedColor: Colors.blue.shade400),
                TabItem(
                    title: Icon(Icons.favorite_outline),
                    color: Colors.blue.shade600,
                    unselectedColor: Colors.blue.shade300),
                TabItem(
                    title: Icon(Icons.search_outlined),
                    color: Colors.blue.shade600,
                    unselectedColor: Colors.blue.shade300),
                TabItem(
                    title: Icon(Icons.settings_outlined),
                    color: Colors.blue.shade600,
                    unselectedColor: Colors.blue.shade300),
                TabItem(
                    title: Icon(Icons.devices_other_outlined),
                    color: Colors.blue.shade600,
                    unselectedColor: Colors.blue.shade300),
              ],
              onTap: (_) {},
              controller: _tabController,
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: List.generate(5, (index) => _pageView(index))),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
