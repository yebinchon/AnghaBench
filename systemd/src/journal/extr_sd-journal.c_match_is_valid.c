
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void const*) ;
 scalar_t__ startswith (void const*,char*) ;

__attribute__((used)) static int match_is_valid(const void *data, size_t size) {
        const char *b, *p;

        assert(data);

        if (size < 2)
                return 0;

        if (startswith(data, "__"))
                return 0;

        b = data;
        for (p = b; p < b + size; p++) {

                if (*p == '=')
                        return p > b;

                if (*p == '_')
                        continue;

                if (*p >= 'A' && *p <= 'Z')
                        continue;

                if (*p >= '0' && *p <= '9')
                        continue;

                return 0;
        }

        return 0;
}
