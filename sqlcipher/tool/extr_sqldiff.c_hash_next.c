
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int* z; size_t i; int a; int b; } ;
typedef TYPE_1__ hash ;


 int NHASH ;

__attribute__((used)) static void hash_next(hash *pHash, int c){
  u16 old = pHash->z[pHash->i];
  pHash->z[pHash->i] = (char)c;
  pHash->i = (pHash->i+1)&(NHASH-1);
  pHash->a = pHash->a - old + (char)c;
  pHash->b = pHash->b - NHASH*old + pHash->a;
}
