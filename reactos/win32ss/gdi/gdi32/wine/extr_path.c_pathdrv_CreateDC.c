
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_physdev {int dev; } ;
typedef int PHYSDEV ;
typedef int LPCWSTR ;
typedef int DEVMODEW ;
typedef int BOOL ;


 int DPRINT (char*,int *) ;
 int FALSE ;
 int GetProcessHeap () ;
 struct path_physdev* HeapAlloc (int ,int ,int) ;
 int TRUE ;
 int path_driver ;
 int push_dc_driver (int *,int *,int *) ;

__attribute__((used)) static BOOL pathdrv_CreateDC( PHYSDEV *dev, LPCWSTR driver, LPCWSTR device,
                              LPCWSTR output, const DEVMODEW *devmode )
{
    struct path_physdev *physdev = HeapAlloc( GetProcessHeap(), 0, sizeof(*physdev) );
    DPRINT("pathdrv_CreateDC dev %p\n",dev);
    if (!physdev) return FALSE;
    push_dc_driver( dev, &physdev->dev, &path_driver );
    return TRUE;
}
