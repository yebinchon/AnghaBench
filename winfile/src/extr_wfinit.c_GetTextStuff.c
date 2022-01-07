
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ cy; int cx; } ;
struct TYPE_5__ {scalar_t__ tmMaxCharWidth; } ;
typedef TYPE_1__ TEXTMETRIC ;
typedef TYPE_2__ SIZE ;
typedef int HDC ;


 int GetTextExtentPoint32 (int ,int ,int,TYPE_2__*) ;
 int GetTextMetrics (int ,TYPE_1__*) ;
 int TEXT (char*) ;
 scalar_t__ dxDrive ;
 scalar_t__ dxDriveBitmap ;
 int dxText ;
 int dyBorderx2 ;
 void* dyDrive ;
 scalar_t__ dyDriveBitmap ;
 void* dyFileName ;
 scalar_t__ dyFolder ;
 scalar_t__ dyText ;
 void* max (scalar_t__,scalar_t__) ;

VOID
GetTextStuff(HDC hdc)
{
   SIZE size;
   TEXTMETRIC tm;

   GetTextExtentPoint32(hdc, TEXT("W"), 1, &size);

   dxText = size.cx;
   dyText = size.cy;
   GetTextMetrics(hdc, &tm);




   dxDrive = dxDriveBitmap + tm.tmMaxCharWidth + (4*dyBorderx2);
   dyDrive = max(dyDriveBitmap + (4*dyBorderx2), dyText);
   dyFileName = max(dyText, dyFolder);
}
