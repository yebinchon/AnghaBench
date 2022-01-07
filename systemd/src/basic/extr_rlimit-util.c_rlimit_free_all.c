
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;


 int _RLIMIT_MAX ;
 struct rlimit* mfree (struct rlimit*) ;

void rlimit_free_all(struct rlimit **rl) {
        int i;

        if (!rl)
                return;

        for (i = 0; i < _RLIMIT_MAX; i++)
                rl[i] = mfree(rl[i]);
}
