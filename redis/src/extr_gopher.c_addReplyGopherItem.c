
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int client ;


 int addReplyProto (int *,int ,int ) ;
 int sdscatfmt (int ,char*,char const*,char const*,char const*,char const*,int) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;

void addReplyGopherItem(client *c, const char *type, const char *descr,
                        const char *selector, const char *hostname, int port)
{
    sds item = sdscatfmt(sdsempty(),"%s%s\t%s\t%s\t%i\r\n",
                         type, descr,
                         selector ? selector : "(NULL)",
                         hostname ? hostname : "(NULL)",
                         port);
    addReplyProto(c,item,sdslen(item));
    sdsfree(item);
}
