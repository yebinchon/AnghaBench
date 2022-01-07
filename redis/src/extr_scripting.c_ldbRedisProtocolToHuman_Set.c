
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 char* ldbRedisProtocolToHuman (int *,char*) ;
 int sdscatlen (int ,char*,int) ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;

char *ldbRedisProtocolToHuman_Set(sds *o, char *reply) {
    char *p = strchr(reply+1,'\r');
    long long mbulklen;
    int j = 0;

    string2ll(reply+1,p-reply-1,&mbulklen);
    p += 2;
    *o = sdscatlen(*o,"~(",2);
    for (j = 0; j < mbulklen; j++) {
        p = ldbRedisProtocolToHuman(o,p);
        if (j != mbulklen-1) *o = sdscatlen(*o,",",1);
    }
    *o = sdscatlen(*o,")",1);
    return p;
}
