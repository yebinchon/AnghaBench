
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rll_t ;
struct TYPE_4__ {int * rl_lock; } ;
typedef TYPE_1__ rl_t ;


 int umem_free (TYPE_1__*,int) ;
 int ztest_rll_unlock (int *) ;

__attribute__((used)) static void
ztest_range_unlock(rl_t *rl)
{
 rll_t *rll = rl->rl_lock;

 ztest_rll_unlock(rll);

 umem_free(rl, sizeof (*rl));
}
