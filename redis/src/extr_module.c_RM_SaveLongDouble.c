
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {scalar_t__ error; } ;
typedef TYPE_1__ RedisModuleIO ;


 int LD_STR_HEX ;
 int MAX_LONG_DOUBLE_CHARS ;
 int RM_SaveStringBuffer (TYPE_1__*,char*,size_t) ;
 size_t ld2string (char*,int,long double,int ) ;

void RM_SaveLongDouble(RedisModuleIO *io, long double value) {
    if (io->error) return;
    char buf[MAX_LONG_DOUBLE_CHARS];


    size_t len = ld2string(buf,sizeof(buf),value,LD_STR_HEX);
    RM_SaveStringBuffer(io,buf,len+1);
}
