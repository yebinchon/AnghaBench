
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int LPCWSTR ;
typedef int DEVMODEW ;
typedef int BOOL ;


 int TRUE ;
 int assert (int ) ;

__attribute__((used)) static BOOL emfpathdrv_CreateDC( PHYSDEV *dev, LPCWSTR driver, LPCWSTR device,
                                 LPCWSTR output, const DEVMODEW *devmode )
{
    assert( 0 );
    return TRUE;
}
