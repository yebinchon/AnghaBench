
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int psz_sout; int p_stream; } ;
typedef TYPE_1__ sout_instance_t ;


 int FREENULL (int ) ;
 int sout_StreamChainDelete (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (TYPE_1__*) ;

void sout_DeleteInstance( sout_instance_t * p_sout )
{

    sout_StreamChainDelete( p_sout->p_stream, ((void*)0) );


    FREENULL( p_sout->psz_sout );

    vlc_mutex_destroy( &p_sout->lock );


    vlc_object_delete(p_sout);
}
