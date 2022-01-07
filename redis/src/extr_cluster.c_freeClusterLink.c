
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* node; int rcvbuf; int sndbuf; int * conn; } ;
typedef TYPE_2__ clusterLink ;
struct TYPE_5__ {int * link; } ;


 int connClose (int *) ;
 int sdsfree (int ) ;
 int zfree (TYPE_2__*) ;

void freeClusterLink(clusterLink *link) {
    if (link->conn) {
        connClose(link->conn);
        link->conn = ((void*)0);
    }
    sdsfree(link->sndbuf);
    sdsfree(link->rcvbuf);
    if (link->node)
        link->node->link = ((void*)0);
    zfree(link);
}
