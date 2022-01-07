
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_3__ {scalar_t__ nArray; } ;
typedef TYPE_1__ IntArray ;



__attribute__((used)) static void intArrayFree(lsm_env *pEnv, IntArray *p){
  p->nArray = 0;
}
