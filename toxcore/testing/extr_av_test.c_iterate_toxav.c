
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toxav_thread_data {int sig; int BobAV; int AliceAV; } ;


 int CV_WINDOW_AUTOSIZE ;
 int MIN (int ,int ) ;
 int c_sleep (int) ;
 int cvDestroyWindow (int ) ;
 int cvNamedWindow (int ,int ) ;
 int cvWaitKey (int) ;
 int fflush (int ) ;
 int printf (char*,int) ;
 int pthread_exit (int *) ;
 int stdout ;
 int toxav_iterate (int ) ;
 int toxav_iteration_interval (int ) ;
 int vdout ;

void *iterate_toxav (void *data)
{
    struct toxav_thread_data *data_cast = data;




    while (data_cast->sig == 0) {
        toxav_iterate(data_cast->AliceAV);
        toxav_iterate(data_cast->BobAV);
        int rc = MIN(toxav_iteration_interval(data_cast->AliceAV), toxav_iteration_interval(data_cast->BobAV));

        printf("\rIteration interval: %d            ", rc);
        fflush(stdout);
        c_sleep(rc);

    }

    data_cast->sig = 1;





    pthread_exit(((void*)0));
}
