
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int bm ;
struct TYPE_15__ {int bmHeight; int bmWidth; } ;
struct TYPE_14__ {scalar_t__ hbmColor; scalar_t__ hbmMask; } ;
struct TYPE_10__ {scalar_t__ hicon; } ;
struct TYPE_11__ {TYPE_1__ icon; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
struct TYPE_13__ {int origHeight; TYPE_3__ desc; int himetricHeight; int origWidth; int himetricWidth; } ;
typedef TYPE_4__ OLEPictureImpl ;
typedef TYPE_5__ ICONINFO ;
typedef int HDC ;
typedef TYPE_6__ BITMAP ;


 int DeleteObject (scalar_t__) ;
 int ERR (char*,...) ;
 int GetDC (int ) ;
 scalar_t__ GetIconInfo (scalar_t__,TYPE_5__*) ;
 int GetObjectW (scalar_t__,int,TYPE_6__*) ;
 int ReleaseDC (int ,int ) ;
 int TRACE (char*,scalar_t__) ;
 int xpixels_to_himetric (int ,int ) ;
 int ypixels_to_himetric (int,int ) ;

__attribute__((used)) static void OLEPictureImpl_SetIcon(OLEPictureImpl * This)
{
    ICONINFO infoIcon;

    TRACE("icon handle %p\n", This->desc.u.icon.hicon);
    if (GetIconInfo(This->desc.u.icon.hicon, &infoIcon)) {
        HDC hdcRef;
        BITMAP bm;

        TRACE("bitmap handle for icon is %p\n", infoIcon.hbmColor);
        if(GetObjectW(infoIcon.hbmColor ? infoIcon.hbmColor : infoIcon.hbmMask, sizeof(bm), &bm) != sizeof(bm)) {
            ERR("GetObject fails on icon bitmap\n");
            return;
        }

        This->origWidth = bm.bmWidth;
        This->origHeight = infoIcon.hbmColor ? bm.bmHeight : bm.bmHeight / 2;

        hdcRef = GetDC(0);

        This->himetricWidth = xpixels_to_himetric(This->origWidth, hdcRef);
        This->himetricHeight = ypixels_to_himetric(This->origHeight, hdcRef);

        ReleaseDC(0, hdcRef);

        DeleteObject(infoIcon.hbmMask);
        if (infoIcon.hbmColor) DeleteObject(infoIcon.hbmColor);
    } else {
        ERR("GetIconInfo() fails on icon %p\n", This->desc.u.icon.hicon);
    }
}
