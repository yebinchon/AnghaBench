
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GCancellable ;


 int cancellable_interrupted ;
 int * g_cancellable_new () ;
 int vlc_interrupt_register (int ,int *) ;

__attribute__((used)) static GCancellable *cancellable_register()
{
    GCancellable *p_canc = g_cancellable_new();
    if (!p_canc)
        return ((void*)0);
    vlc_interrupt_register(cancellable_interrupted, p_canc);
    return p_canc;
}
