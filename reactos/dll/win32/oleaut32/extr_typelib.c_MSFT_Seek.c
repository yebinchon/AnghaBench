
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ oStart; scalar_t__ length; scalar_t__ pos; } ;
typedef TYPE_1__ TLBContext ;
typedef scalar_t__ LONG ;


 scalar_t__ DO_NOT_SEEK ;
 int ERR (char*,scalar_t__,scalar_t__) ;
 int TLB_abort () ;

__attribute__((used)) static inline void MSFT_Seek(TLBContext *pcx, LONG where)
{
    if (where != DO_NOT_SEEK)
    {
        where += pcx->oStart;
        if (where > pcx->length)
        {

            ERR("seek beyond end (%d/%d)\n", where, pcx->length );
            TLB_abort();
        }
        pcx->pos = where;
    }
}
