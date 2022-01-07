
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int bsBuff; int bsLive; } ;
typedef int Int32 ;
typedef TYPE_1__ EState ;


 int bsNEEDW (int) ;

__attribute__((used)) static
__inline__
void bsW ( EState* s, Int32 n, UInt32 v )
{
   bsNEEDW ( n );
   s->bsBuff |= (v << (32 - s->bsLive - n));
   s->bsLive += n;
}
