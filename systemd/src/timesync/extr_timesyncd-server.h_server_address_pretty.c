
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa; } ;
struct TYPE_5__ {int socklen; TYPE_1__ sockaddr; } ;
typedef TYPE_2__ ServerAddress ;


 int sockaddr_pretty (int *,int ,int,int,char**) ;

__attribute__((used)) static inline int server_address_pretty(ServerAddress *a, char **pretty) {
        return sockaddr_pretty(&a->sockaddr.sa, a->socklen, 1, 1, pretty);
}
