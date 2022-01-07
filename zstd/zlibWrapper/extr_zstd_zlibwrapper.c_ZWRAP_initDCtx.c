
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; scalar_t__ pos; } ;
struct TYPE_5__ {TYPE_1__ outBuffer; scalar_t__ errorCount; } ;
typedef TYPE_2__ ZWRAP_DCtx ;



__attribute__((used)) static void ZWRAP_initDCtx(ZWRAP_DCtx* zwd)
{
    zwd->errorCount = 0;
    zwd->outBuffer.pos = 0;
    zwd->outBuffer.size = 0;
}
