
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bm ;
struct TYPE_8__ {scalar_t__ bmWidth; scalar_t__ bmHeight; } ;
struct TYPE_7__ {int hbmColor; } ;
struct TYPE_6__ {scalar_t__ cx; scalar_t__ cy; } ;
typedef TYPE_1__ SIZE ;
typedef int IImageList ;
typedef TYPE_2__ ICONINFO ;
typedef int HICON ;
typedef int DWORD ;
typedef TYPE_3__ BITMAP ;


 int GetIconInfo (int ,TYPE_2__*) ;
 int GetObjectW (int ,int,TYPE_3__*) ;
 void* GetSystemMetrics (int ) ;
 int IID_IImageList ;
 int IImageList_GetIconSize (int *,scalar_t__*,scalar_t__*) ;
 int IImageList_Release (int *) ;
 int SHGFI_SHELLICONSIZE ;
 int SHGFI_SMALLICON ;
 int SHGetImageList (int ,int *,void**) ;
 int SHIL_LARGE ;
 int SHIL_SMALL ;
 int SM_CXICON ;
 int SM_CXSMICON ;
 int SM_CYICON ;
 int SM_CYSMICON ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void check_icon_size( HICON icon, DWORD flags )
{
    ICONINFO info;
    BITMAP bm;
    SIZE list_size, metrics_size;
    IImageList *list;

    GetIconInfo( icon, &info );
    GetObjectW( info.hbmColor, sizeof(bm), &bm );

    SHGetImageList( (flags & SHGFI_SMALLICON) ? SHIL_SMALL : SHIL_LARGE,
                    &IID_IImageList, (void **)&list );
    IImageList_GetIconSize( list, &list_size.cx, &list_size.cy );
    IImageList_Release( list );

    metrics_size.cx = GetSystemMetrics( (flags & SHGFI_SMALLICON) ? SM_CXSMICON : SM_CXICON );
    metrics_size.cy = GetSystemMetrics( (flags & SHGFI_SMALLICON) ? SM_CYSMICON : SM_CYICON );


    if (flags & SHGFI_SHELLICONSIZE)
    {
        ok( bm.bmWidth == list_size.cx, "got %d expected %d\n", bm.bmWidth, list_size.cx );
        ok( bm.bmHeight == list_size.cy, "got %d expected %d\n", bm.bmHeight, list_size.cy );
    }
    else
    {
        ok( bm.bmWidth == metrics_size.cx, "got %d expected %d\n", bm.bmWidth, metrics_size.cx );
        ok( bm.bmHeight == metrics_size.cy, "got %d expected %d\n", bm.bmHeight, metrics_size.cy );
    }
}
