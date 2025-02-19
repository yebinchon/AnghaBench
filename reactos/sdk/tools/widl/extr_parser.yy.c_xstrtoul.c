
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 unsigned long ULONG_MAX ;
 scalar_t__ errno ;
 int error_loc (char*,char const*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static unsigned int xstrtoul(const char *nptr, char **endptr, int base)
{
    unsigned long val;

    errno = 0;
    val = strtoul(nptr, endptr, base);
    if ((val == ULONG_MAX && errno == ERANGE) || ((unsigned int)val != val))
        error_loc("integer constant %s is too large\n", nptr);
    return val;
}
