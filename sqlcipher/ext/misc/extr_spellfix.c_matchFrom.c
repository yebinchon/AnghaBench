
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nFrom; char const* a; } ;
typedef TYPE_1__ EditDist3Cost ;


 int assert (int) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int matchFrom(EditDist3Cost *p, const char *z, int n){
  assert( p->nFrom<=n );
  if( p->nFrom ){
    if( p->a[0]!=z[0] ) return 0;
    if( strncmp(p->a, z, p->nFrom)!=0 ) return 0;
  }
  return 1;
}
