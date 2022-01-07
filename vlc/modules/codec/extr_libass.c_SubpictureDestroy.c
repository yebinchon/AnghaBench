
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
struct TYPE_7__ {TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_8__ {struct TYPE_8__* p_subs_data; int p_dec_sys; } ;
typedef TYPE_3__ libass_spu_updater_sys_t ;


 int DecSysRelease (int ) ;
 int free (TYPE_3__*) ;

__attribute__((used)) static void SubpictureDestroy( subpicture_t *p_subpic )
{
    libass_spu_updater_sys_t *p_spusys = p_subpic->updater.p_sys;

    DecSysRelease( p_spusys->p_dec_sys );
    free( p_spusys->p_subs_data );
    free( p_spusys );
}
