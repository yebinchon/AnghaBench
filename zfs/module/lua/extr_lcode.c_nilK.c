
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int h; TYPE_1__* ls; } ;
struct TYPE_5__ {int L; } ;
typedef int TValue ;
typedef TYPE_2__ FuncState ;


 int addk (TYPE_2__*,int *,int *) ;
 int sethvalue (int ,int *,int ) ;
 int setnilvalue (int *) ;

__attribute__((used)) static int nilK (FuncState *fs) {
  TValue k, v;
  setnilvalue(&v);

  sethvalue(fs->ls->L, &k, fs->h);
  return addk(fs, &k, &v);
}
