
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int DWORD ;


 int UInt32x32To64 (int,int) ;

LARGE_INTEGER
TriMultiply(DWORD dw1, DWORD dw2, DWORD dwSmall)
{
   LARGE_INTEGER Result;

   Result.QuadPart = UInt32x32To64(dw1, dw2);
   Result.QuadPart = Result.QuadPart * dwSmall;

   return Result;
}
