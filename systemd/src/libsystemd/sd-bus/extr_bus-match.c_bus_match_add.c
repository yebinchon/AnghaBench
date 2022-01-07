
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_callback {int dummy; } ;
typedef struct match_callback bus_match_node ;
struct bus_match_component {int value_str; int value_u8; int type; } ;


 int assert (struct match_callback*) ;
 int bus_match_add_compare_value (struct match_callback*,int ,int ,int ,struct match_callback**) ;
 int bus_match_add_leaf (struct match_callback*,struct match_callback*) ;

int bus_match_add(
                struct bus_match_node *root,
                struct bus_match_component *components,
                unsigned n_components,
                struct match_callback *callback) {

        unsigned i;
        struct bus_match_node *n;
        int r;

        assert(root);
        assert(callback);

        n = root;
        for (i = 0; i < n_components; i++) {
                r = bus_match_add_compare_value(
                                n, components[i].type,
                                components[i].value_u8, components[i].value_str, &n);
                if (r < 0)
                        return r;
        }

        return bus_match_add_leaf(n, callback);
}
