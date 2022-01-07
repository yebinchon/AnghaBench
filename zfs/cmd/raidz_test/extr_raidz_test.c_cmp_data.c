
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* rm_golden; } ;
typedef TYPE_1__ raidz_test_opts_t ;
struct TYPE_9__ {int rm_cols; } ;
typedef TYPE_2__ raidz_map_t ;


 int DATA_COL (TYPE_2__*,int) ;
 int D_DEBUG ;
 int LOG_OPT (int ,TYPE_1__*,char*,int) ;
 scalar_t__ abd_cmp (int ,int ) ;
 int raidz_parity (TYPE_2__*) ;

__attribute__((used)) static int
cmp_data(raidz_test_opts_t *opts, raidz_map_t *rm)
{
 int i, ret = 0;
 int dcols = opts->rm_golden->rm_cols - raidz_parity(opts->rm_golden);

 for (i = 0; i < dcols; i++) {
  if (abd_cmp(DATA_COL(opts->rm_golden, i), DATA_COL(rm, i))
      != 0) {
   ret++;

   LOG_OPT(D_DEBUG, opts,
       "\nData block [%d] different!\n", i);
  }
 }
 return (ret);
}
