
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int automatic_integer_property; int automatic_string_property; int something; int fds; } ;
typedef int pthread_t ;


 int AF_UNIX ;
 int EXIT_SUCCESS ;
 int PTR_TO_INT (void*) ;
 int SOCK_STREAM ;
 int assert_se (int) ;
 int client (struct context*) ;
 int free (int) ;
 int pthread_create (int *,int *,int ,struct context*) ;
 int pthread_join (int ,void**) ;
 int server ;
 scalar_t__ socketpair (int ,int ,int ,int ) ;
 int strdup (char*) ;

int main(int argc, char *argv[]) {
        struct context c = {};
        pthread_t s;
        void *p;
        int r, q;

        c.automatic_integer_property = 4711;
        assert_se(c.automatic_string_property = strdup("dudeldu"));

        assert_se(socketpair(AF_UNIX, SOCK_STREAM, 0, c.fds) >= 0);

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

        free(c.something);
        free(c.automatic_string_property);

        return EXIT_SUCCESS;
}
