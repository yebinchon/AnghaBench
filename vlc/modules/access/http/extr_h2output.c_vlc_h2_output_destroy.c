
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_output {int closing; int lock; int wait; int thread; } ;


 int free (struct vlc_h2_output*) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_h2_output_flush_unlocked (struct vlc_h2_output*) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_h2_output_destroy(struct vlc_h2_output *out)
{
    vlc_mutex_lock(&out->lock);
    out->closing = 1;
    vlc_cond_signal(&out->wait);
    vlc_mutex_unlock(&out->lock);

    vlc_cancel(out->thread);
    vlc_join(out->thread, ((void*)0));

    vlc_cond_destroy(&out->wait);
    vlc_mutex_destroy(&out->lock);


    vlc_h2_output_flush_unlocked(out);
    free(out);
}
