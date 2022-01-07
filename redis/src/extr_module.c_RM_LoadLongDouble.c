
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; } ;
typedef TYPE_1__ RedisModuleIO ;


 int RM_Free (char*) ;
 char* RM_LoadStringBuffer (TYPE_1__*,size_t*) ;
 int string2ld (char*,size_t,long double*) ;

long double RM_LoadLongDouble(RedisModuleIO *io) {
    if (io->error) return 0;
    long double value;
    size_t len;
    char* str = RM_LoadStringBuffer(io,&len);
    if (!str) return 0;
    string2ld(str,len,&value);
    RM_Free(str);
    return value;
}
