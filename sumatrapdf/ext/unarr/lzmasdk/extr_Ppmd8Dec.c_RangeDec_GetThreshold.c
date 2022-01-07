
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int Code; int Range; } ;
typedef TYPE_1__ CPpmd8 ;



__attribute__((used)) static UInt32 RangeDec_GetThreshold(CPpmd8 *p, UInt32 total)
{
  return p->Code / (p->Range /= total);
}
