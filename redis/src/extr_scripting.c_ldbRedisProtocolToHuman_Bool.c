
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdscatlen (int ,char*,int) ;
 char* strchr (char*,char) ;

char *ldbRedisProtocolToHuman_Bool(sds *o, char *reply) {
    char *p = strchr(reply+1,'\r');
    if (reply[1] == 't')
        *o = sdscatlen(*o,"#true",5);
    else
        *o = sdscatlen(*o,"#false",6);
    return p+2;
}
