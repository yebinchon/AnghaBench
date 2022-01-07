
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const sd_bus ;
typedef int UnitInfo ;


 int DEP_ALL ;
 int DEP_ORDER ;
 int DEP_REQUIRE ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int arg_dot ;
 int assert (int const*) ;
 int graph_one_property (int const*,int const*,char*,char*,char**,char**,char**) ;

__attribute__((used)) static int graph_one(sd_bus *bus, const UnitInfo *u, char *patterns[], char *from_patterns[], char *to_patterns[]) {
        int r;

        assert(bus);
        assert(u);

        if (IN_SET(arg_dot, DEP_ORDER, DEP_ALL)) {
                r = graph_one_property(bus, u, "After", "green", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
        }

        if (IN_SET(arg_dot, DEP_REQUIRE, DEP_ALL)) {
                r = graph_one_property(bus, u, "Requires", "black", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
                r = graph_one_property(bus, u, "Requisite", "darkblue", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
                r = graph_one_property(bus, u, "Wants", "grey66", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
                r = graph_one_property(bus, u, "Conflicts", "red", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
        }

        return 0;
}
