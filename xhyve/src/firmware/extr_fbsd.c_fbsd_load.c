
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int (* func_t ) (int *,int *,int ,int) ;
struct TYPE_8__ {char* kernelenv; scalar_t__ cons; int userboot; scalar_t__ bootvolume; } ;
struct TYPE_7__ {int c_cflag; } ;


 int CLOCAL ;
 int RTLD_LOCAL ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ STDOUT_FILENO ;
 int TCSAFLUSH ;
 int USERBOOT_VERSION_3 ;
 int addenv (char*) ;
 int altcons_open (scalar_t__) ;
 int assert (int) ;
 int cb ;
 int cfmakeraw (TYPE_1__*) ;
 int close (scalar_t__) ;
 TYPE_5__ config ;
 scalar_t__ consin_fd ;
 scalar_t__ consout_fd ;
 scalar_t__* disk_fd ;
 int disk_open (scalar_t__) ;
 char* dlerror () ;
 void* dlopen (int ,int ) ;
 scalar_t__ dlsym (void*,char*) ;
 int exec_done ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int * host_base ;
 int ndisks ;
 TYPE_1__ oldterm ;
 int setjmp (int ) ;
 int stderr ;
 int tcgetattr (scalar_t__,TYPE_1__*) ;
 int tcsetattr (scalar_t__,int ,TYPE_1__*) ;
 TYPE_1__ term ;
 int vcpu_rip ;

uint64_t
fbsd_load(void)
{
 void *h;
 int i;
 func_t func;

 host_base = ((void*)0);
 consin_fd = STDIN_FILENO;
 consout_fd = STDOUT_FILENO;

 if (config.cons) {
  altcons_open(config.cons);
 }

 if (config.bootvolume) {
  disk_open(config.bootvolume);
 } else {
  fprintf(stderr, "fbsd: no boot volume\n");
  exit(-1);
 }

 if (config.kernelenv) {
  addenv(config.kernelenv);
 }



 tcgetattr(consout_fd, &term);
 oldterm = term;
 cfmakeraw(&term);
 term.c_cflag |= CLOCAL;

 tcsetattr(consout_fd, TCSAFLUSH, &term);

 h = dlopen(config.userboot, RTLD_LOCAL);
 if (!h) {
  fprintf(stderr, "%s\n", dlerror());
  exit(-1);
 }

 func = (func_t) dlsym(h, "loader_main");
 if (!func) {
  fprintf(stderr, "%s\n", dlerror());
  exit(-1);
 }

 addenv("smbios.bios.vendor=BHYVE");
 addenv("boot_serial=1");

 if (!setjmp(exec_done)) {
  func(&cb, ((void*)0), USERBOOT_VERSION_3, ndisks);
 }

 for (i = 0; i < ndisks; i++) {
  close(disk_fd[i]);
 }

 if (config.cons) {
  assert(consin_fd == consout_fd);
  close(consin_fd);
 }

 return vcpu_rip;
}
