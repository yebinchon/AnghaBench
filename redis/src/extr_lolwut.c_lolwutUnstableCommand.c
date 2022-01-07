
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int client ;


 int REDIS_VERSION ;
 int addReplyVerbatim (int *,int ,int ,char*) ;
 int sdscat (int ,int ) ;
 int sdscatlen (int ,char*,int) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int sdsnew (char*) ;

void lolwutUnstableCommand(client *c) {
    sds rendered = sdsnew("Redis ver. ");
    rendered = sdscat(rendered,REDIS_VERSION);
    rendered = sdscatlen(rendered,"\n",1);
    addReplyVerbatim(c,rendered,sdslen(rendered),"txt");
    sdsfree(rendered);
}
