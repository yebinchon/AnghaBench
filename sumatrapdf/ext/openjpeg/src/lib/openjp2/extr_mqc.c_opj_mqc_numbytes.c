
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_3__ {int bp; int start; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef int OPJ_UINT32 ;


 int assert (int) ;

OPJ_UINT32 opj_mqc_numbytes(opj_mqc_t *mqc)
{
    const ptrdiff_t diff = mqc->bp - mqc->start;



    return (OPJ_UINT32)diff;
}
