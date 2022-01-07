
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* rto_ashift; int rto_v; int rto_dsize; int rto_dcols; int rto_offset; } ;
typedef TYPE_1__ raidz_test_opts_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ rto_sweep; } ;
typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,char*,int ,int ,int ,char*,int ) ;
 int ilog2 (int ) ;
 TYPE_3__ rto_opts ;
 TYPE_1__ rto_opts_defaults ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void usage(boolean_t requested)
{
 const raidz_test_opts_t *o = &rto_opts_defaults;

 FILE *fp = requested ? stdout : stderr;

 (void) fprintf(fp, "Usage:\n"
     "\t[-a zio ashift (default: %zu)]\n"
     "\t[-o zio offset, exponent radix 2 (default: %zu)]\n"
     "\t[-d number of raidz data columns (default: %zu)]\n"
     "\t[-s zio size, exponent radix 2 (default: %zu)]\n"
     "\t[-S parameter sweep (default: %s)]\n"
     "\t[-t timeout for parameter sweep test]\n"
     "\t[-B benchmark all raidz implementations]\n"
     "\t[-v increase verbosity (default: %zu)]\n"
     "\t[-h (print help)]\n"
     "\t[-T test the test, see if failure would be detected]\n"
     "\t[-D debug (attach gdb on SIGSEGV)]\n"
     "",
     o->rto_ashift,
     ilog2(o->rto_offset),
     o->rto_dcols,
     ilog2(o->rto_dsize),
     rto_opts.rto_sweep ? "yes" : "no",
     o->rto_v);

 exit(requested ? 0 : 1);
}
