
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int resp; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int czero; int cone; } ;


 int addReply (TYPE_1__*,int ) ;
 int addReplyProto (TYPE_1__*,char*,int) ;
 TYPE_2__ shared ;

void addReplyBool(client *c, int b) {
    if (c->resp == 2) {
        addReply(c, b ? shared.cone : shared.czero);
    } else {
        addReplyProto(c, b ? "#t\r\n" : "#f\r\n",4);
    }
}
