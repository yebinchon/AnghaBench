
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {scalar_t__ sun_family; scalar_t__* sun_path; } ;


 scalar_t__ AF_UNIX ;
 int EPROTOTYPE ;
 int assert (struct sockaddr_un const*) ;
 int errno ;
 char* memchr (scalar_t__*,int ,int) ;
 char* memdupa_suffix0 (char*,int) ;
 scalar_t__ unlink (char const*) ;

int sockaddr_un_unlink(const struct sockaddr_un *sa) {
        const char *p, * nul;

        assert(sa);

        if (sa->sun_family != AF_UNIX)
                return -EPROTOTYPE;

        if (sa->sun_path[0] == 0)
                return 0;


        nul = memchr(sa->sun_path, 0, sizeof(sa->sun_path));
        if (nul)
                p = sa->sun_path;
        else
                p = memdupa_suffix0(sa->sun_path, sizeof(sa->sun_path));

        if (unlink(p) < 0)
                return -errno;

        return 1;
}
