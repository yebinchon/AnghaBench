
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sbuf ;
typedef int dbuf ;
struct TYPE_5__ {int resp; } ;
typedef TYPE_1__ client ;


 int MAX_LONG_DOUBLE_CHARS ;
 int addReplyBulkCString (TYPE_1__*,char*) ;
 int addReplyProto (TYPE_1__*,char*,int) ;
 scalar_t__ isinf (double) ;
 int snprintf (char*,int,char*,double,...) ;

void addReplyDouble(client *c, double d) {
    if (isinf(d)) {


        if (c->resp == 2) {
            addReplyBulkCString(c, d > 0 ? "inf" : "-inf");
        } else {
            addReplyProto(c, d > 0 ? ",inf\r\n" : ",-inf\r\n",
                              d > 0 ? 6 : 7);
        }
    } else {
        char dbuf[MAX_LONG_DOUBLE_CHARS+3],
             sbuf[MAX_LONG_DOUBLE_CHARS+32];
        int dlen, slen;
        if (c->resp == 2) {
            dlen = snprintf(dbuf,sizeof(dbuf),"%.17g",d);
            slen = snprintf(sbuf,sizeof(sbuf),"$%d\r\n%s\r\n",dlen,dbuf);
            addReplyProto(c,sbuf,slen);
        } else {
            dlen = snprintf(dbuf,sizeof(dbuf),",%.17g\r\n",d);
            addReplyProto(c,dbuf,dlen);
        }
    }
}
