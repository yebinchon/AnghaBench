
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_match_component {struct bus_match_component* value_str; } ;


 int free (struct bus_match_component*) ;

void bus_match_parse_free(struct bus_match_component *components, unsigned n_components) {
        unsigned i;

        for (i = 0; i < n_components; i++)
                free(components[i].value_str);

        free(components);
}
