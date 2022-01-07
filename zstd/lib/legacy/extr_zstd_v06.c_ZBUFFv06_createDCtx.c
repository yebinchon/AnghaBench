
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stage; int zd; } ;
typedef TYPE_1__ ZBUFFv06_DCtx ;


 int ZBUFFds_init ;
 int ZSTDv06_createDCtx () ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

ZBUFFv06_DCtx* ZBUFFv06_createDCtx(void)
{
    ZBUFFv06_DCtx* zbd = (ZBUFFv06_DCtx*)malloc(sizeof(ZBUFFv06_DCtx));
    if (zbd==((void*)0)) return ((void*)0);
    memset(zbd, 0, sizeof(*zbd));
    zbd->zd = ZSTDv06_createDCtx();
    zbd->stage = ZBUFFds_init;
    return zbd;
}
