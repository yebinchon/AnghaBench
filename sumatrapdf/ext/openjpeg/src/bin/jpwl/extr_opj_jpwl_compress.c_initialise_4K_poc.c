
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tile; int resno0; int layno1; int resno1; int compno1; void* prg1; scalar_t__ compno0; } ;
typedef TYPE_1__ opj_poc_t ;


 void* CPRL ;

__attribute__((used)) static int initialise_4K_poc(opj_poc_t *POC, int numres)
{
    POC[0].tile = 1;
    POC[0].resno0 = 0;
    POC[0].compno0 = 0;
    POC[0].layno1 = 1;
    POC[0].resno1 = numres - 1;
    POC[0].compno1 = 3;
    POC[0].prg1 = CPRL;
    POC[1].tile = 1;
    POC[1].resno0 = numres - 1;
    POC[1].compno0 = 0;
    POC[1].layno1 = 1;
    POC[1].resno1 = numres;
    POC[1].compno1 = 3;
    POC[1].prg1 = CPRL;
    return 2;
}
