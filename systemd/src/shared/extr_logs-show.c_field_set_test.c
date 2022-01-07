
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int log_oom () ;
 scalar_t__ set_get (int *,char*) ;
 char* strndupa (char const*,size_t) ;

__attribute__((used)) static int field_set_test(Set *fields, const char *name, size_t n) {
        char *s = ((void*)0);

        if (!fields)
                return 1;

        s = strndupa(name, n);
        if (!s)
                return log_oom();

        return set_get(fields, s) ? 1 : 0;
}
