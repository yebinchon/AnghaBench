
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_2__ {scalar_t__ rto_sweep; scalar_t__ rto_benchmark; } ;


 int ERR (char*,int ) ;
 int EXIT_FAILURE ;
 int FREAD ;
 int PROT_READ ;
 int SIGSEGV ;
 int SPA_MAXBLOCKSIZE ;
 int UMEM_NOFAIL ;
 int _IOLBF ;
 int dprintf_setup (int*,char**) ;
 int errno ;
 int exit (int ) ;
 int gdb ;
 char* gdb_tmpl ;
 unsigned int getpid () ;
 int kernel_fini () ;
 int kernel_init (int ) ;
 int mprotect (int*,int,int ) ;
 int process_options (int,char**) ;
 int rand () ;
 int* rand_data ;
 TYPE_1__ rto_opts ;
 int run_raidz_benchmark () ;
 int run_sweep () ;
 int run_test (int *) ;
 int setvbuf (int ,int *,int ,int ) ;
 int sig_handler ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sprintf (int ,char*,unsigned int) ;
 int srand (unsigned int) ;
 int stdout ;
 int strerror (int ) ;
 scalar_t__ time (int *) ;
 scalar_t__ umem_alloc (int,int ) ;
 int umem_free (int*,int) ;

int
main(int argc, char **argv)
{
 size_t i;
 struct sigaction action;
 int err = 0;


 (void) sprintf(gdb, gdb_tmpl, getpid());

 action.sa_handler = sig_handler;
 sigemptyset(&action.sa_mask);
 action.sa_flags = 0;

 if (sigaction(SIGSEGV, &action, ((void*)0)) < 0) {
  ERR("raidz_test: cannot catch SIGSEGV: %s.\n", strerror(errno));
  exit(EXIT_FAILURE);
 }

 (void) setvbuf(stdout, ((void*)0), _IOLBF, 0);

 dprintf_setup(&argc, argv);

 process_options(argc, argv);

 kernel_init(FREAD);


 rand_data = (int *)umem_alloc(SPA_MAXBLOCKSIZE, UMEM_NOFAIL);
 srand((unsigned)time(((void*)0)) * getpid());
 for (i = 0; i < SPA_MAXBLOCKSIZE / sizeof (int); i++)
  rand_data[i] = rand();

 mprotect(rand_data, SPA_MAXBLOCKSIZE, PROT_READ);

 if (rto_opts.rto_benchmark) {
  run_raidz_benchmark();
 } else if (rto_opts.rto_sweep) {
  err = run_sweep();
 } else {
  err = run_test(((void*)0));
 }

 umem_free(rand_data, SPA_MAXBLOCKSIZE);
 kernel_fini();

 return (err);
}
