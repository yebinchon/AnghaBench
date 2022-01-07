
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ES_CONTINUOUS ;
 int SetThreadExecutionState (int ) ;
 int VLC_UNUSED (void*) ;

__attribute__((used)) static void RestoreStateOnCancel( void* p_opaque )
{
    VLC_UNUSED(p_opaque);
    SetThreadExecutionState( ES_CONTINUOUS );
}
