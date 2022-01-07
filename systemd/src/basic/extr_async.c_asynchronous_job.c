
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int assert_se (int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 int pthread_sigmask (int ,int *,int *) ;
 scalar_t__ sigfillset (int *) ;

int asynchronous_job(void* (*func)(void *p), void *arg) {
        sigset_t ss, saved_ss;
        pthread_attr_t a;
        pthread_t t;
        int r, k;




        r = pthread_attr_init(&a);
        if (r > 0)
                return -r;

        r = pthread_attr_setdetachstate(&a, PTHREAD_CREATE_DETACHED);
        if (r > 0) {
                r = -r;
                goto finish;
        }

        assert_se(sigfillset(&ss) >= 0);




        r = pthread_sigmask(SIG_BLOCK, &ss, &saved_ss);
        if (r > 0) {
                r = -r;
                goto finish;
        }

        r = pthread_create(&t, &a, func, arg);

        k = pthread_sigmask(SIG_SETMASK, &saved_ss, ((void*)0));

        if (r > 0)
                r = -r;
        else if (k > 0)
                r = -k;
        else
                r = 0;

finish:
        pthread_attr_destroy(&a);
        return r;
}
