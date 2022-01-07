
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ startswith (char const*,char*) ;

__attribute__((used)) static bool field_is_valid(const char *field) {
        const char *p;

        assert(field);

        if (isempty(field))
                return 0;

        if (startswith(field, "__"))
                return 0;

        for (p = field; *p; p++) {

                if (*p == '_')
                        continue;

                if (*p >= 'A' && *p <= 'Z')
                        continue;

                if (*p >= '0' && *p <= '9')
                        continue;

                return 0;
        }

        return 1;
}
