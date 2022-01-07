
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int o; } ;
typedef TYPE_1__ RedisModuleDigest ;


 int mixDigest (int ,unsigned char*,size_t) ;

void RM_DigestAddStringBuffer(RedisModuleDigest *md, unsigned char *ele, size_t len) {
    mixDigest(md->o,ele,len);
}
