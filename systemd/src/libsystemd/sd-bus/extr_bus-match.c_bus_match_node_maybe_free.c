
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int children; } ;
struct bus_match_node {scalar_t__ type; TYPE_1__ compare; scalar_t__ child; } ;


 scalar_t__ BUS_MATCH_IS_COMPARE (scalar_t__) ;
 scalar_t__ BUS_MATCH_ROOT ;
 int assert (struct bus_match_node*) ;
 int bus_match_node_free (struct bus_match_node*) ;
 int hashmap_isempty (int ) ;

__attribute__((used)) static bool bus_match_node_maybe_free(struct bus_match_node *node) {
        assert(node);

        if (node->type == BUS_MATCH_ROOT)
                return 0;

        if (node->child)
                return 0;

        if (BUS_MATCH_IS_COMPARE(node->type) && !hashmap_isempty(node->compare.children))
                return 1;

        bus_match_node_free(node);
        return 1;
}
