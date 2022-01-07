
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_module; } ;
typedef TYPE_1__ fingerprinter_thread_t ;


 int module_unneed (TYPE_1__*,int ) ;
 int vlc_object_delete (TYPE_1__*) ;

void fingerprinter_Destroy( fingerprinter_thread_t *p_fingerprint )
{
    module_unneed( p_fingerprint, p_fingerprint->p_module );
    vlc_object_delete(p_fingerprint);
}
