
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raidz_test_opts_t ;


 int B_FALSE ;
 int print_opts (int *,int ) ;
 int rto_opts ;
 int run_gen_check (int *) ;
 int run_rec_check (int *) ;

__attribute__((used)) static int
run_test(raidz_test_opts_t *opts)
{
 int err = 0;

 if (opts == ((void*)0))
  opts = &rto_opts;

 print_opts(opts, B_FALSE);

 err |= run_gen_check(opts);
 err |= run_rec_check(opts);

 return (err);
}
