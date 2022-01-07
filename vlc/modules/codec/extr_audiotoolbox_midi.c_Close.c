
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {scalar_t__ graph; } ;
typedef TYPE_2__ decoder_sys_t ;


 int AUGraphStop (scalar_t__) ;
 int DisposeAUGraph (scalar_t__) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close (vlc_object_t *p_this)
{
    decoder_sys_t *p_sys = ((decoder_t *)p_this)->p_sys;

    if (p_sys->graph) {
        AUGraphStop(p_sys->graph);
        DisposeAUGraph(p_sys->graph);
    }
    free(p_sys);
}
