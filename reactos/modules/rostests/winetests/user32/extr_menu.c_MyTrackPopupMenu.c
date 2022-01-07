
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPTPMPARAMS ;
typedef int INT ;
typedef int HWND ;
typedef int HMENU ;
typedef int DWORD ;


 int TrackPopupMenu (int ,int ,int ,int ,int ,int ,int *) ;
 int TrackPopupMenuEx (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static DWORD MyTrackPopupMenu( int ex, HMENU hmenu, UINT flags, INT x, INT y, HWND hwnd, LPTPMPARAMS ptpm)
{
    return ex
        ? TrackPopupMenuEx( hmenu, flags, x, y, hwnd, ptpm)
        : TrackPopupMenu( hmenu, flags, x, y, 0, hwnd, ((void*)0));
}
