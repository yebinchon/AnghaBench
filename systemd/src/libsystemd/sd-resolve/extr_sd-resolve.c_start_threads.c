
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {unsigned int n_outstanding; unsigned int n_valid_workers; int * workers; } ;
typedef TYPE_1__ sd_resolve ;


 unsigned int CLAMP (unsigned int,int ,int ) ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int WORKERS_MAX ;
 int WORKERS_MIN ;
 int assert_se (int) ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_sigmask (int ,int *,int *) ;
 scalar_t__ sigfillset (int *) ;
 int thread_worker ;

__attribute__((used)) static int start_threads(sd_resolve *resolve, unsigned extra) {
        sigset_t ss, saved_ss;
        unsigned n;
        int r, k;

        assert_se(sigfillset(&ss) >= 0);



        r = pthread_sigmask(SIG_BLOCK, &ss, &saved_ss);
        if (r > 0)
                return -r;

        n = resolve->n_outstanding + extra;
        n = CLAMP(n, WORKERS_MIN, WORKERS_MAX);

        while (resolve->n_valid_workers < n) {
                r = pthread_create(&resolve->workers[resolve->n_valid_workers], ((void*)0), thread_worker, resolve);
                if (r > 0) {
                        r = -r;
                        goto finish;
                }

                resolve->n_valid_workers++;
        }

        r = 0;

finish:
        k = pthread_sigmask(SIG_SETMASK, &saved_ss, ((void*)0));
        if (k > 0 && r >= 0)
                r = -k;

        return r;
}
