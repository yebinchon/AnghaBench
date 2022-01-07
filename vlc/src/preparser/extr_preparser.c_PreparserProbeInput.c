
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; } ;
typedef TYPE_1__ input_preparser_task_t ;


 int VLC_UNUSED (void*) ;
 int atomic_load (int *) ;

__attribute__((used)) static int PreparserProbeInput( void* preparser_, void* task_ )
{
    input_preparser_task_t* task = task_;
    return atomic_load( &task->done );
    VLC_UNUSED( preparser_ );
}
