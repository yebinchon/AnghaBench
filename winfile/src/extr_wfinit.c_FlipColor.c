
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetBValue (int ) ;
 int GetGValue (int ) ;
 int GetRValue (int ) ;
 int RGB (int ,int ,int ) ;

DWORD
FlipColor(DWORD rgb)
{
   return RGB(GetBValue(rgb), GetGValue(rgb), GetRValue(rgb));
}
