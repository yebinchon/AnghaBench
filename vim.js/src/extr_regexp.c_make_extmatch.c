
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcnt; } ;
typedef TYPE_1__ reg_extmatch_T ;


 scalar_t__ alloc_clear (unsigned int) ;

__attribute__((used)) static reg_extmatch_T *
make_extmatch()
{
    reg_extmatch_T *em;

    em = (reg_extmatch_T *)alloc_clear((unsigned)sizeof(reg_extmatch_T));
    if (em != ((void*)0))
 em->refcnt = 1;
    return em;
}
