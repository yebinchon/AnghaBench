
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sockaddr_union {int sa; } ;
typedef int socklen_t ;
typedef int host ;


 int ENOMEM ;
 int IDN_FLAGS ;
 int NI_MAXHOST ;
 int assert (char**) ;
 int errno ;
 int getnameinfo (int *,int ,char*,int,int *,int ,int ) ;
 int log_debug_errno (int,char*,char*) ;
 int sockaddr_pretty (int *,int ,int,int,char**) ;
 char* strdup (char*) ;

int socknameinfo_pretty(union sockaddr_union *sa, socklen_t salen, char **_ret) {
        int r;
        char host[NI_MAXHOST], *ret;

        assert(_ret);

        r = getnameinfo(&sa->sa, salen, host, sizeof(host), ((void*)0), 0, IDN_FLAGS);
        if (r != 0) {
                int saved_errno = errno;

                r = sockaddr_pretty(&sa->sa, salen, 1, 1, &ret);
                if (r < 0)
                        return r;

                log_debug_errno(saved_errno, "getnameinfo(%s) failed: %m", ret);
        } else {
                ret = strdup(host);
                if (!ret)
                        return -ENOMEM;
        }

        *_ret = ret;
        return 0;
}
