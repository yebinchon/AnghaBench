
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSAFLUSH ;
 int consout_fd ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int oldterm ;
 int stderr ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) __attribute__ ((noreturn)) static void
cb_exit(void)
{
 tcsetattr(consout_fd, TCSAFLUSH, &oldterm);
 fprintf(stderr, "fbsd: error\n");
 exit(-1);
}
