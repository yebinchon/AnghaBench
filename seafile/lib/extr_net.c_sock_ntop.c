
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {char* sun_path; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int str ;
typedef int socklen_t ;





 int * evutil_inet_ntop (int const,int *,char*,int) ;
 int snprintf (char*,int,char*,...) ;
 int strcpy (char*,char*) ;

char *
sock_ntop(const struct sockaddr *sa, socklen_t salen)
{
    static char str[128];

    switch (sa->sa_family) {
    case 130: {
        struct sockaddr_in *sin = (struct sockaddr_in *) sa;

        if (evutil_inet_ntop(130, &sin->sin_addr, str, sizeof(str)) == ((void*)0))
            return(((void*)0));
        return(str);
    }
    case 128: {
        struct sockaddr_un *unp = (struct sockaddr_un *) sa;



        if (unp->sun_path[0] == 0)
            strcpy(str, "(no pathname bound)");
        else
            snprintf(str, sizeof(str), "%s", unp->sun_path);
        return(str);
    }



    default:
        snprintf(str, sizeof(str), "sock_ntop: unknown AF_xxx: %d, len %d",
                 sa->sa_family, salen);
        return(str);
    }
    return (((void*)0));
}
