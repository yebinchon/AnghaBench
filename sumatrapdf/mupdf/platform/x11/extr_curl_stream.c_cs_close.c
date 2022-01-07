
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curlstate {int kill_thread; struct curlstate* map; struct curlstate* buffer; int easy; int mutex; int thread; } ;
typedef int fz_context ;


 int CloseHandle (int ) ;
 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 int curl_easy_cleanup (int ) ;
 int fz_free (int *,struct curlstate*) ;
 int lock (struct curlstate*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int unlock (struct curlstate*) ;

__attribute__((used)) static void cs_close(fz_context *ctx, void *state_)
{
 struct curlstate *state = state_;

 lock(state);
 state->kill_thread = 1;
 unlock(state);






 pthread_join(state->thread, ((void*)0));
 pthread_mutex_destroy(&state->mutex);


 curl_easy_cleanup(state->easy);
 fz_free(ctx, state->buffer);
 fz_free(ctx, state->map);
 fz_free(ctx, state);
}
