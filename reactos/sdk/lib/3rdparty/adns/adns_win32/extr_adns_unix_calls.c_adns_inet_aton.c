
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;


 int EINVAL ;
 scalar_t__ INADDR_NONE ;
 int errno ;
 scalar_t__ inet_addr (char const*) ;
 int strcmp (char const*,char*) ;

int adns_inet_aton(const char *cp, struct in_addr *inp)
{
    if (!cp || !*cp || !inp)
    {
        errno = EINVAL;
        return -1;
    }

    if (!strcmp(cp, "255.255.255.255"))
    {

        inp->s_addr = INADDR_NONE;
        return 0;
    }

 inp->s_addr = inet_addr(cp);
    return (inp->s_addr == INADDR_NONE) ? -1 : 0;
}
