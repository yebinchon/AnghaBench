
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BOOL ;


 int WM_DEVICECHANGE ;
 int WM_DISPLAYCHANGE ;
 int WM_DWMNCRENDERINGCHANGED ;
 int WM_GETICON ;
 int WM_GETOBJECT ;
 int WM_GETTEXT ;
 int WM_GETTEXTLENGTH ;
 int WM_TIMECHANGE ;

__attribute__((used)) static BOOL ignore_message( UINT message )
{

    return (message >= 0xc000 ||
            message == WM_GETICON ||
            message == WM_GETOBJECT ||
            message == WM_TIMECHANGE ||
            message == WM_DISPLAYCHANGE ||
            message == WM_DEVICECHANGE ||
            message == WM_DWMNCRENDERINGCHANGED ||
            message == WM_GETTEXTLENGTH ||
            message == WM_GETTEXT);
}
