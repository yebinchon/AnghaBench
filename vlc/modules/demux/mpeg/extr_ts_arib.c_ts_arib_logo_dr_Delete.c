
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_logo_char; } ;
typedef TYPE_1__ ts_arib_logo_dr_t ;


 int free (TYPE_1__*) ;

void ts_arib_logo_dr_Delete( ts_arib_logo_dr_t *p_dr )
{
    free( p_dr->p_logo_char );
    free( p_dr );
}
