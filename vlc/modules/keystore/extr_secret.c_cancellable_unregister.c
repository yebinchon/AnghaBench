
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GCancellable ;


 int g_object_unref (int *) ;
 int vlc_interrupt_unregister () ;

__attribute__((used)) static void cancellable_unregister(GCancellable *p_canc)
{
    if (p_canc != ((void*)0))
    {
        vlc_interrupt_unregister();
        g_object_unref(p_canc);
    }
}
