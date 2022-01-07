
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int pa_threaded_mainloop ;
typedef int pa_context ;


 int pa_context_disconnect (int *) ;
 int pa_context_set_event_callback (int *,int *,int *) ;
 int pa_context_set_state_callback (int *,int *,int *) ;
 int pa_context_unref (int *) ;
 int pa_threaded_mainloop_free (int *) ;
 int pa_threaded_mainloop_lock (int *) ;
 int pa_threaded_mainloop_stop (int *) ;
 int pa_threaded_mainloop_unlock (int *) ;

void vlc_pa_disconnect (vlc_object_t *obj, pa_context *ctx,
                        pa_threaded_mainloop *mainloop)
{
    pa_threaded_mainloop_lock (mainloop);
    pa_context_disconnect (ctx);
    pa_context_set_event_callback (ctx, ((void*)0), ((void*)0));
    pa_context_set_state_callback (ctx, ((void*)0), ((void*)0));
    pa_context_unref (ctx);
    pa_threaded_mainloop_unlock (mainloop);

    pa_threaded_mainloop_stop (mainloop);
    pa_threaded_mainloop_free (mainloop);
    (void) obj;
}
