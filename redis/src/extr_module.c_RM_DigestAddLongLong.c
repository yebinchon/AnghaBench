
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int o; } ;
typedef TYPE_1__ RedisModuleDigest ;


 int LONG_STR_SIZE ;
 size_t ll2string (char*,int,long long) ;
 int mixDigest (int ,char*,size_t) ;

void RM_DigestAddLongLong(RedisModuleDigest *md, long long ll) {
    char buf[LONG_STR_SIZE];
    size_t len = ll2string(buf,sizeof(buf),ll);
    mixDigest(md->o,buf,len);
}
