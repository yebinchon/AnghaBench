
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ image_name_is_valid (char const*) ;
 char* last_path_component (char const*) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 char* startswith (char const*,char const*) ;
 size_t strcspn (char const*,char*) ;
 scalar_t__ streq (char const*,char*) ;
 size_t strspn (char const*,char*) ;

__attribute__((used)) static bool marker_matches_image(const char *marker, const char *name_or_path) {
        const char *a;

        assert(marker);
        assert(name_or_path);

        a = last_path_component(marker);

        if (image_name_is_valid(name_or_path)) {
                const char *e;




                e = startswith(a, name_or_path);
                if (!e)
                        return 0;

                return
                        e[strspn(e, "/")] == 0 ||
                        streq(e, ".raw");
        } else {
                const char *b;
                size_t l;




                l = strcspn(a, "/");
                b = last_path_component(name_or_path);

                if (strcspn(b, "/") != l)
                        return 0;

                return memcmp(a, b, l) == 0;
        }
}
