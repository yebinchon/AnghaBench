
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* rm_golden; } ;
typedef TYPE_1__ raidz_test_opts_t ;
typedef int raidz_map_t ;


 int CODE_COL (int const*,int) ;
 int D_DEBUG ;
 int LOG_OPT (int ,TYPE_1__*,char*,int) ;
 int VERIFY (int) ;
 scalar_t__ abd_cmp (int ,int ) ;

__attribute__((used)) static int
cmp_code(raidz_test_opts_t *opts, const raidz_map_t *rm, const int parity)
{
 int i, ret = 0;

 VERIFY(parity >= 1 && parity <= 3);

 for (i = 0; i < parity; i++) {
  if (abd_cmp(CODE_COL(rm, i), CODE_COL(opts->rm_golden, i))
      != 0) {
   ret++;
   LOG_OPT(D_DEBUG, opts,
       "\nParity block [%d] different!\n", i);
  }
 }
 return (ret);
}
