
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;
typedef char const FILE ;


 int assert (char const*) ;
 int sd_bus_track_count_name (int *,char const*) ;
 char* sd_bus_track_first (int *) ;
 char* sd_bus_track_next (int *) ;
 int serialize_item (char const*,char const*,char const*) ;

void bus_track_serialize(sd_bus_track *t, FILE *f, const char *prefix) {
        const char *n;

        assert(f);
        assert(prefix);

        for (n = sd_bus_track_first(t); n; n = sd_bus_track_next(t)) {
                int c, j;

                c = sd_bus_track_count_name(t, n);
                for (j = 0; j < c; j++)
                        (void) serialize_item(f, prefix, n);
        }
}
