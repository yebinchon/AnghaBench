
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* z; TYPE_1__* a; } ;
struct TYPE_4__ {int nByte; } ;
typedef TYPE_2__ EditDist3FromString ;


 int assert (int) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int matchFromTo(
  EditDist3FromString *pStr,
  int n1,
  const char *z2,
  int n2
){
  int b1 = pStr->a[n1].nByte;
  if( b1>n2 ) return 0;
  assert( b1>0 );
  if( pStr->z[n1]!=z2[0] ) return 0;
  if( strncmp(pStr->z+n1, z2, b1)!=0 ) return 0;
  return 1;
}
