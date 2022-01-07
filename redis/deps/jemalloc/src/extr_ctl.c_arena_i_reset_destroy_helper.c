
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int arena_t ;


 int EFAULT ;
 int MIB_UNSIGNED (unsigned int,int) ;
 int READONLY () ;
 int WRITEONLY () ;
 int * arena_get (int ,unsigned int,int) ;
 scalar_t__ arena_is_auto (int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static int
arena_i_reset_destroy_helper(tsd_t *tsd, const size_t *mib, size_t miblen,
    void *oldp, size_t *oldlenp, void *newp, size_t newlen, unsigned *arena_ind,
    arena_t **arena) {
 int ret;

 READONLY();
 WRITEONLY();
 MIB_UNSIGNED(*arena_ind, 1);

 *arena = arena_get(tsd_tsdn(tsd), *arena_ind, 0);
 if (*arena == ((void*)0) || arena_is_auto(*arena)) {
  ret = EFAULT;
  goto label_return;
 }

 ret = 0;
label_return:
 return ret;
}
