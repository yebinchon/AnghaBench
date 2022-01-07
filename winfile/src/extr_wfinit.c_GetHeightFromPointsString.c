
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int INT ;
typedef int HDC ;


 int GetDC (int *) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSY ;
 int MulDiv (int ,int ,int) ;
 int ReleaseDC (int *,int ) ;
 int atoi (int ) ;

INT
GetHeightFromPointsString(LPTSTR szPoints)
{
   HDC hdc;
   INT height;

   hdc = GetDC(((void*)0));
   height = MulDiv(-atoi(szPoints), GetDeviceCaps(hdc, LOGPIXELSY), 72);
   ReleaseDC(((void*)0), hdc);

   return height;
}
