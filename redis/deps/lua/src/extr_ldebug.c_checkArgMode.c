
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum OpArgMask { ____Placeholder_OpArgMask } OpArgMask ;
struct TYPE_4__ {int maxstacksize; int sizek; } ;
typedef TYPE_1__ Proto ;


 int INDEXK (int) ;
 int ISK (int) ;




 int check (int) ;
 int checkreg (TYPE_1__ const*,int) ;

__attribute__((used)) static int checkArgMode (const Proto *pt, int r, enum OpArgMask mode) {
  switch (mode) {
    case 130: check(r == 0); break;
    case 128: break;
    case 129: checkreg(pt, r); break;
    case 131:
      check(ISK(r) ? INDEXK(r) < pt->sizek : r < pt->maxstacksize);
      break;
  }
  return 1;
}
