
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int lastsave; } ;


 int addReplyLongLong (int *,int ) ;
 TYPE_1__ server ;

void lastsaveCommand(client *c) {
    addReplyLongLong(c,server.lastsave);
}
