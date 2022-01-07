
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_11__ {scalar_t__ fd; int offline_state; int offline_thread; TYPE_1__* header; int writable; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_2__ JournalFile ;


 int EINVAL ;
 int EPERM ;
 int OFFLINE_JOINED ;
 int OFFLINE_SYNCING ;
 int SIGBUS ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 scalar_t__ STATE_ONLINE ;
 int assert (TYPE_2__*) ;
 int assert_se (int) ;
 int journal_file_is_offlining (TYPE_2__*) ;
 int journal_file_set_offline_internal (TYPE_2__*) ;
 int journal_file_set_offline_thread ;
 int journal_file_set_offline_thread_join (TYPE_2__*) ;
 int journal_file_set_offline_try_restart (TYPE_2__*) ;
 int pthread_create (int *,int *,int ,TYPE_2__*) ;
 int pthread_sigmask (int ,int *,int *) ;
 scalar_t__ sigdelset (int *,int ) ;
 scalar_t__ sigfillset (int *) ;

int journal_file_set_offline(JournalFile *f, bool wait) {
        bool restarted;
        int r;

        assert(f);

        if (!f->writable)
                return -EPERM;

        if (f->fd < 0 || !f->header)
                return -EINVAL;



        if (!journal_file_is_offlining(f) && f->header->state != STATE_ONLINE)
                return journal_file_set_offline_thread_join(f);


        restarted = journal_file_set_offline_try_restart(f);
        if ((restarted && wait) || !restarted) {
                r = journal_file_set_offline_thread_join(f);
                if (r < 0)
                        return r;
        }

        if (restarted)
                return 0;


        f->offline_state = OFFLINE_SYNCING;

        if (wait)
                journal_file_set_offline_internal(f);
        else {
                sigset_t ss, saved_ss;
                int k;

                assert_se(sigfillset(&ss) >= 0);


                assert_se(sigdelset(&ss, SIGBUS) >= 0);

                r = pthread_sigmask(SIG_BLOCK, &ss, &saved_ss);
                if (r > 0)
                        return -r;

                r = pthread_create(&f->offline_thread, ((void*)0), journal_file_set_offline_thread, f);

                k = pthread_sigmask(SIG_SETMASK, &saved_ss, ((void*)0));
                if (r > 0) {
                        f->offline_state = OFFLINE_JOINED;
                        return -r;
                }
                if (k > 0)
                        return -k;
        }

        return 0;
}
