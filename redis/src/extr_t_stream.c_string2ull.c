
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 scalar_t__ string2ll (char const*,int ,long long*) ;
 int strlen (char const*) ;
 unsigned long long strtoull (char const*,char**,int) ;

int string2ull(const char *s, unsigned long long *value) {
    long long ll;
    if (string2ll(s,strlen(s),&ll)) {
        if (ll < 0) return 0;
        *value = ll;
        return 1;
    }
    errno = 0;
    char *endptr = ((void*)0);
    *value = strtoull(s,&endptr,10);
    if (errno == EINVAL || errno == ERANGE || !(*s != '\0' && *endptr == '\0'))
        return 0;
    return 1;
}
