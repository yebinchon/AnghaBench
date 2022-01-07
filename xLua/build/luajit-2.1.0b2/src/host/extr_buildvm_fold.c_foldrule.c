
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ BUILD_MAX_FOLD ;
 int exit (int) ;
 int* foldkeys ;
 int fprintf (int ,char*,...) ;
 int funcidx ;
 int lineno ;
 int nexttoken (char**,int,int) ;
 scalar_t__ nkeys ;
 int stderr ;

__attribute__((used)) static void foldrule(char *p)
{
  uint32_t op = nexttoken(&p, 0, 0);
  uint32_t left = nexttoken(&p, 0, 0x7f);
  uint32_t right = nexttoken(&p, 1, 0x3ff);
  uint32_t key = (funcidx << 24) | (op << 17) | (left << 10) | right;
  uint32_t i;
  if (nkeys >= BUILD_MAX_FOLD) {
    fprintf(stderr, "Error: too many fold rules, increase BUILD_MAX_FOLD.\n");
    exit(1);
  }

  for (i = nkeys; i > 0; i--) {
    if ((foldkeys[i-1]&0xffffff) < (key & 0xffffff))
      break;
    if ((foldkeys[i-1]&0xffffff) == (key & 0xffffff)) {
      fprintf(stderr, "Error: duplicate fold definition at line %d\n", lineno);
      exit(1);
    }
    foldkeys[i] = foldkeys[i-1];
  }
  foldkeys[i] = key;
  nkeys++;
}
