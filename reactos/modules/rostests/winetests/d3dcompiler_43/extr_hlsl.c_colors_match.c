
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ a; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
typedef TYPE_1__ D3DXCOLOR ;
typedef int BOOL ;


 float fabs (scalar_t__) ;

__attribute__((used)) static BOOL colors_match(D3DXCOLOR a, D3DXCOLOR b, float epsilon)
{
  return (fabs(a.r - b.r) < epsilon && fabs(a.g - b.g) < epsilon && fabs(a.b - b.b) < epsilon &&
          fabs(a.a - b.a) < epsilon);
}
