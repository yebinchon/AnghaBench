
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ encoder_t ;
struct TYPE_9__ {int hmsdmo_dll; TYPE_2__* p_dmo; } ;
typedef TYPE_4__ encoder_sys_t ;
struct TYPE_7__ {TYPE_1__* vt; } ;
struct TYPE_6__ {int (* Release ) (int *) ;} ;
typedef int IUnknown ;


 int CoUninitialize () ;
 int FreeLibrary (int ) ;
 int free (TYPE_4__*) ;
 int stub1 (int *) ;

void EncoderClose( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t*)p_this;
    encoder_sys_t *p_sys = p_enc->p_sys;

    if( !p_sys ) return;

    if( p_sys->p_dmo ) p_sys->p_dmo->vt->Release( (IUnknown *)p_sys->p_dmo );
    FreeLibrary( p_sys->hmsdmo_dll );


    CoUninitialize();

    free( p_sys );
}
