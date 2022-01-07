
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_5__ {int resp; } ;
typedef TYPE_1__ client ;
typedef int buf ;


 int LD_STR_HUMAN ;
 int MAX_LONG_DOUBLE_CHARS ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyProto (TYPE_1__*,char*,int) ;
 int * createStringObjectFromLongDouble (long double,int) ;
 int decrRefCount (int *) ;
 int ld2string (char*,int,long double,int ) ;

void addReplyHumanLongDouble(client *c, long double d) {
    if (c->resp == 2) {
        robj *o = createStringObjectFromLongDouble(d,1);
        addReplyBulk(c,o);
        decrRefCount(o);
    } else {
        char buf[MAX_LONG_DOUBLE_CHARS];
        int len = ld2string(buf,sizeof(buf),d,LD_STR_HUMAN);
        addReplyProto(c,",",1);
        addReplyProto(c,buf,len);
        addReplyProto(c,"\r\n",2);
    }
}
