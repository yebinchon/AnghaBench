
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long long rto_ashift; unsigned long long rto_offset; unsigned long long rto_dcols; unsigned long long rto_dsize; size_t rto_sweep_timeout; int rto_sweep; int rto_benchmark; int rto_gdb; int rto_sanity; int rto_v; } ;
typedef TYPE_1__ raidz_test_opts_t ;


 int B_FALSE ;
 int B_TRUE ;
 size_t MAX (int,size_t) ;
 unsigned long long MIN (int,size_t) ;
 int SPA_MAXBLOCKSHIFT ;
 int SPA_MINBLOCKSHIFT ;
 int bcopy (int *,TYPE_1__*,int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 TYPE_1__ rto_opts ;
 int rto_opts_defaults ;
 size_t strtoull (int ,int *,int ) ;
 int usage (int ) ;

__attribute__((used)) static void process_options(int argc, char **argv)
{
 size_t value;
 int opt;

 raidz_test_opts_t *o = &rto_opts;

 bcopy(&rto_opts_defaults, o, sizeof (*o));

 while ((opt = getopt(argc, argv, "TDBSvha:o:d:s:t:")) != -1) {
  value = 0;

  switch (opt) {
  case 'a':
   value = strtoull(optarg, ((void*)0), 0);
   o->rto_ashift = MIN(13, MAX(9, value));
   break;
  case 'o':
   value = strtoull(optarg, ((void*)0), 0);
   o->rto_offset = ((1ULL << MIN(12, value)) >> 9) << 9;
   break;
  case 'd':
   value = strtoull(optarg, ((void*)0), 0);
   o->rto_dcols = MIN(255, MAX(1, value));
   break;
  case 's':
   value = strtoull(optarg, ((void*)0), 0);
   o->rto_dsize = 1ULL << MIN(SPA_MAXBLOCKSHIFT,
       MAX(SPA_MINBLOCKSHIFT, value));
   break;
  case 't':
   value = strtoull(optarg, ((void*)0), 0);
   o->rto_sweep_timeout = value;
   break;
  case 'v':
   o->rto_v++;
   break;
  case 'S':
   o->rto_sweep = 1;
   break;
  case 'B':
   o->rto_benchmark = 1;
   break;
  case 'D':
   o->rto_gdb = 1;
   break;
  case 'T':
   o->rto_sanity = 1;
   break;
  case 'h':
   usage(B_TRUE);
   break;
  case '?':
  default:
   usage(B_FALSE);
   break;
  }
 }
}
