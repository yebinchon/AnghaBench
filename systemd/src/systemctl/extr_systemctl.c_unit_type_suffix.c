
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char* unit_type_suffix(const char *name) {
        const char *dot;

        dot = strrchr(name, '.');
        if (!dot)
                return "";

        return dot + 1;
}
