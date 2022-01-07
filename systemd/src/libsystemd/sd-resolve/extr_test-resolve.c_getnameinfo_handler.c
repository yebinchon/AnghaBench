
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_resolve_query ;


 int assert_se (int *) ;
 int gai_strerror (int) ;
 int log_error (char*,int ,int) ;
 int printf (char*,char*,char*) ;
 char* strna (char const*) ;

__attribute__((used)) static int getnameinfo_handler(sd_resolve_query *q, int ret, const char *host, const char *serv, void *userdata) {
        assert_se(q);

        if (ret != 0) {
                log_error("getnameinfo error: %s %i", gai_strerror(ret), ret);
                return 0;
        }

        printf("Host: %s — Serv: %s\n", strna(host), strna(serv));
        return 0;
}
