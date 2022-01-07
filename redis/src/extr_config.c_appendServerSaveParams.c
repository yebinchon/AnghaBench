
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct saveparam {int dummy; } ;
struct TYPE_5__ {int saveparamslen; TYPE_1__* saveparams; } ;
struct TYPE_4__ {int changes; int seconds; } ;


 TYPE_3__ server ;
 TYPE_1__* zrealloc (TYPE_1__*,int) ;

void appendServerSaveParams(time_t seconds, int changes) {
    server.saveparams = zrealloc(server.saveparams,sizeof(struct saveparam)*(server.saveparamslen+1));
    server.saveparams[server.saveparamslen].seconds = seconds;
    server.saveparams[server.saveparamslen].changes = changes;
    server.saveparamslen++;
}
