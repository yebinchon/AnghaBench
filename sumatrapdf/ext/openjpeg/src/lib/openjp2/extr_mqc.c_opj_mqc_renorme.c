
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int c; scalar_t__ ct; } ;
typedef TYPE_1__ opj_mqc_t ;


 int opj_mqc_byteout (TYPE_1__*) ;

__attribute__((used)) static void opj_mqc_renorme(opj_mqc_t *mqc)
{
    do {
        mqc->a <<= 1;
        mqc->c <<= 1;
        mqc->ct--;
        if (mqc->ct == 0) {
            opj_mqc_byteout(mqc);
        }
    } while ((mqc->a & 0x8000) == 0);
}
