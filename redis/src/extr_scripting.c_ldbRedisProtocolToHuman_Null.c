
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdscatlen (int ,char*,int) ;
 char* strchr (char*,char) ;

char *ldbRedisProtocolToHuman_Null(sds *o, char *reply) {
    char *p = strchr(reply+1,'\r');
    *o = sdscatlen(*o,"(null)",6);
    return p+2;
}
