
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t STRLEN (char*) ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ parse_uid (char*,int *) ;
 size_t strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static const char *skip_user_manager(const char *p) {
        size_t n;

        if (isempty(p))
                return ((void*)0);

        p += strspn(p, "/");

        n = strcspn(p, "/");
        if (n < STRLEN("user@x.service"))
                return ((void*)0);

        if (memcmp(p, "user@", 5) == 0 && memcmp(p + n - 8, ".service", 8) == 0) {
                char buf[n - 5 - 8 + 1];

                memcpy(buf, p + 5, n - 5 - 8);
                buf[n - 5 - 8] = 0;






                if (parse_uid(buf, ((void*)0)) < 0)
                        return ((void*)0);

                p += n;
                p += strspn(p, "/");

                return p;
        }

        return ((void*)0);
}
