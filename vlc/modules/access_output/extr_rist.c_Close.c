
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_5__ {int senderthread; int ristthread; } ;
typedef TYPE_2__ sout_access_out_sys_t ;


 int Clean (TYPE_1__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    vlc_cancel(p_sys->ristthread);
    vlc_cancel(p_sys->senderthread);

    vlc_join(p_sys->ristthread, ((void*)0));
    vlc_join(p_sys->senderthread, ((void*)0));

    Clean( p_access );
}
