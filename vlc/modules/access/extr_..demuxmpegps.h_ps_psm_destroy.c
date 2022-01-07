
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_es; int * es; } ;
typedef TYPE_1__ ps_psm_t ;


 int free (int *) ;

__attribute__((used)) static inline void ps_psm_destroy( ps_psm_t *p_psm )
{
    free( p_psm->es );
    p_psm->es = ((void*)0);
    p_psm->i_es = 0;
}
