
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;


 int DRIVEBAR_FLAG ;
 int MDIClientSizeChange (int ,int ) ;

VOID
RepaintDriveWindow(HWND hwndChild)
{
   MDIClientSizeChange(hwndChild,DRIVEBAR_FLAG);
}
