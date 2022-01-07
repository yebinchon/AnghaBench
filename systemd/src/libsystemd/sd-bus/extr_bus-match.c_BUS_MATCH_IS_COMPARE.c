
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bus_match_node_type { ____Placeholder_bus_match_node_type } bus_match_node_type ;


 int BUS_MATCH_ARG_HAS_LAST ;
 int BUS_MATCH_SENDER ;

__attribute__((used)) static bool BUS_MATCH_IS_COMPARE(enum bus_match_node_type t) {
        return t >= BUS_MATCH_SENDER && t <= BUS_MATCH_ARG_HAS_LAST;
}
