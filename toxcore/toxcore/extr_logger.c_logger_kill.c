
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int log_file; struct TYPE_4__* msg; struct TYPE_4__* posstr; struct TYPE_4__* tstr; struct TYPE_4__* id; } ;
typedef TYPE_1__ Logger ;


 scalar_t__ fclose (int ) ;
 int free (TYPE_1__*) ;
 int perror (char*) ;
 int pthread_mutex_destroy (int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

void logger_kill(Logger *log)
{

    return;


    if (!log)
        return;

    pthread_mutex_lock(log->mutex);
    free(log->id);
    free(log->tstr);
    free(log->posstr);
    free(log->msg);

    if (fclose(log->log_file) != 0)
        perror("Could not close log file");

    pthread_mutex_unlock(log->mutex);
    pthread_mutex_destroy(log->mutex);

    free(log);
}
