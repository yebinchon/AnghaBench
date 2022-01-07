
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int assert_se (int) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

__attribute__((used)) static inline void block_signals_reset(sigset_t *ss) {
        assert_se(sigprocmask(SIG_SETMASK, ss, ((void*)0)) >= 0);
}
