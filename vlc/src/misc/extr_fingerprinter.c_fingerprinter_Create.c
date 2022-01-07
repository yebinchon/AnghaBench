
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int p_module; } ;
typedef TYPE_1__ fingerprinter_thread_t ;


 int module_need (TYPE_1__*,char*,int *,int) ;
 int msg_Err (int *,char*) ;
 scalar_t__ vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

fingerprinter_thread_t *fingerprinter_Create( vlc_object_t *p_this )
{
    fingerprinter_thread_t *p_fingerprint;

    p_fingerprint = ( fingerprinter_thread_t * )
            vlc_custom_create( p_this, sizeof( *p_fingerprint ), "fingerprinter" );
    if( !p_fingerprint )
    {
        msg_Err( p_this, "unable to create fingerprinter" );
        return ((void*)0);
    }

    p_fingerprint->p_module = module_need( p_fingerprint, "fingerprinter",
                                           ((void*)0), 0 );
    if( !p_fingerprint->p_module )
    {
        vlc_object_delete(p_fingerprint);
        msg_Err( p_this, "AcoustID fingerprinter not found" );
        return ((void*)0);
    }

    return p_fingerprint;
}
