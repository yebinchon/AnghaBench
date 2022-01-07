
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t STRLEN (char*) ;
 int UNIT_NAME_PLAIN ;
 char* cg_unescape (char*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (char*,char const*,size_t) ;
 int unit_name_is_valid (char*,int ) ;

__attribute__((used)) static bool valid_slice_name(const char *p, size_t n) {

        if (!p)
                return 0;

        if (n < STRLEN("x.slice"))
                return 0;

        if (memcmp(p + n - 6, ".slice", 6) == 0) {
                char buf[n+1], *c;

                memcpy(buf, p, n);
                buf[n] = 0;

                c = cg_unescape(buf);

                return unit_name_is_valid(c, UNIT_NAME_PLAIN);
        }

        return 0;
}
