
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int DeleteDC (scalar_t__) ;
 int DeleteObject (scalar_t__) ;
 int SelectObject (scalar_t__,int ) ;
 scalar_t__ hbmBitmaps ;
 int hbmSave ;
 scalar_t__ hdcMem ;

VOID
DeleteBitmaps()
{
   if (hdcMem) {

      SelectObject(hdcMem, hbmSave);

      if (hbmBitmaps)
         DeleteObject(hbmBitmaps);
      DeleteDC(hdcMem);
   }
}
