
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memchr (char const*,int ,size_t) ;

__attribute__((used)) static bool validate_nul(const char *s, size_t l) {


        if (memchr(s, 0, l))
                return 0;


        if (s[l] != 0)
                return 0;

        return 1;
}
