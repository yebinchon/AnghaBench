
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int client_negotiate_unix_fds; int server_negotiate_unix_fds; int client_anonymous_auth; int server_anonymous_auth; int fds; } ;
typedef int pthread_t ;


 int AF_UNIX ;
 int PTR_TO_INT (void*) ;
 int SOCK_STREAM ;
 int assert_se (int) ;
 int client (struct context*) ;
 int pthread_create (int *,int *,int ,struct context*) ;
 int pthread_join (int ,void**) ;
 int server ;
 scalar_t__ socketpair (int ,int ,int ,int ) ;
 int zero (struct context) ;

__attribute__((used)) static int test_one(bool client_negotiate_unix_fds, bool server_negotiate_unix_fds,
                    bool client_anonymous_auth, bool server_anonymous_auth) {

        struct context c;
        pthread_t s;
        void *p;
        int r, q;

        zero(c);

        assert_se(socketpair(AF_UNIX, SOCK_STREAM, 0, c.fds) >= 0);

        c.client_negotiate_unix_fds = client_negotiate_unix_fds;
        c.server_negotiate_unix_fds = server_negotiate_unix_fds;
        c.client_anonymous_auth = client_anonymous_auth;
        c.server_anonymous_auth = server_anonymous_auth;

        r = pthread_create(&s, ((void*)0), server, &c);
        if (r != 0)
                return -r;

        r = client(&c);

        q = pthread_join(s, &p);
        if (q != 0)
                return -q;

        if (r < 0)
                return r;

        if (PTR_TO_INT(p) < 0)
                return PTR_TO_INT(p);

        return 0;
}
