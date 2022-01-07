
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_version; int uniqueextdesc; scalar_t__ es; scalar_t__ i_es; } ;
typedef TYPE_1__ ps_psm_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void ps_psm_init( ps_psm_t *p_psm )
{
    p_psm->i_version = 0xFF;
    p_psm->i_es = 0;
    p_psm->es = 0;
    memset( &p_psm->uniqueextdesc, 0, 3 );
}
