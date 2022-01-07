
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bitmap ;
struct TYPE_7__ {scalar_t__ bmType; int bmWidth; int bmHeight; int bmWidthBytes; int bmPlanes; int bmBitsPixel; int * bmBits; } ;
struct TYPE_6__ {scalar_t__ fIcon; int xHotspot; int yHotspot; int * hbmColor; int * hbmMask; } ;
typedef TYPE_1__ ICONINFO ;
typedef scalar_t__ HICON ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef TYPE_2__ BITMAP ;


 void* CreateBitmap (int,int,int,int,int *) ;
 void* CreateCompatibleBitmap (int ,int,int) ;
 scalar_t__ CreateIconIndirect (TYPE_1__*) ;
 int DeleteObject (int *) ;
 int DestroyIcon (scalar_t__) ;
 int GetDC (int ) ;
 int GetIconInfo (scalar_t__,TYPE_1__*) ;
 int GetObject (int *,int,TYPE_2__*) ;
 int ok (int,char*,...) ;

void
Test_GetIconInfo(BOOL fIcon, DWORD screen_bpp)
{
    HICON hicon;
    ICONINFO iconinfo, iconinfo2;
    BITMAP bitmap;

    iconinfo.fIcon = fIcon;
    iconinfo.xHotspot = 0;
    iconinfo.yHotspot = 0;
    iconinfo.hbmMask = ((void*)0);
    iconinfo.hbmColor = ((void*)0);

    hicon = CreateIconIndirect(&iconinfo);
    ok(hicon == 0, "should fail\n");

    iconinfo.hbmMask = CreateBitmap(8, 16, 1, 1, ((void*)0));
    hicon = CreateIconIndirect(&iconinfo);
    ok(hicon != 0, "should not fail\n");

    ok(GetIconInfo(hicon, &iconinfo2), "\n");
    ok(iconinfo2.fIcon == iconinfo.fIcon, "\n");
    if (fIcon)
    {
        ok(iconinfo2.xHotspot == 4, "%ld\n", iconinfo2.xHotspot);
        ok(iconinfo2.yHotspot == 4, "%ld\n", iconinfo2.yHotspot);
    }
    else
    {
        ok(iconinfo2.xHotspot == 0, "%ld\n", iconinfo2.xHotspot);
        ok(iconinfo2.yHotspot == 0, "%ld\n", iconinfo2.yHotspot);
    }
    ok(iconinfo2.hbmMask != ((void*)0), "\n");
    ok(iconinfo2.hbmMask != iconinfo.hbmMask, "\n");
    ok(iconinfo2.hbmColor == ((void*)0), "\n");
    DeleteObject(iconinfo2.hbmMask);

    ok(GetIconInfo(hicon, &iconinfo2), "\n");
    ok(iconinfo2.fIcon == iconinfo.fIcon, "\n");
    if (fIcon)
    {
        ok(iconinfo2.xHotspot == 4, "%ld\n", iconinfo2.xHotspot);
        ok(iconinfo2.yHotspot == 4, "%ld\n", iconinfo2.yHotspot);
    }
    else
    {
        ok(iconinfo2.xHotspot == 0, "%ld\n", iconinfo2.xHotspot);
        ok(iconinfo2.yHotspot == 0, "%ld\n", iconinfo2.yHotspot);
    }
    ok(iconinfo2.hbmMask != ((void*)0), "\n");
    ok(iconinfo2.hbmMask != iconinfo.hbmMask, "\n");
    ok(iconinfo2.hbmColor == ((void*)0), "\n");
    DeleteObject(iconinfo2.hbmMask);
    ok(DestroyIcon(hicon), "\n");

    iconinfo.hbmColor = CreateBitmap(2, 2, 1, 1, ((void*)0));
    hicon = CreateIconIndirect(&iconinfo);
    ok(hicon != 0, "should not fail\n");

    ok(GetIconInfo(hicon, &iconinfo2), "\n");
    ok(iconinfo2.fIcon == iconinfo.fIcon, "\n");
    if (fIcon)
    {
        ok(iconinfo2.xHotspot == 4, "%ld\n", iconinfo2.xHotspot);
        ok(iconinfo2.yHotspot == 8, "%ld\n", iconinfo2.yHotspot);
    }
    else
    {
        ok(iconinfo2.xHotspot == 0, "%ld\n", iconinfo2.xHotspot);
        ok(iconinfo2.yHotspot == 0, "%ld\n", iconinfo2.yHotspot);
    }
    ok(iconinfo2.hbmMask != ((void*)0), "\n");
    ok(iconinfo2.hbmMask != iconinfo.hbmMask, "\n");
    ok(iconinfo2.hbmColor != ((void*)0), "\n");
    ok(iconinfo2.hbmColor != iconinfo.hbmColor, "\n");

    ok(GetObject(iconinfo2.hbmMask, sizeof(bitmap), &bitmap), "GetObject failed\n");
    ok(bitmap.bmType == 0, "\n");
    ok(bitmap.bmWidth == 8, "\n");
    ok(bitmap.bmHeight == 16, "\n");
    ok(bitmap.bmWidthBytes == 2, "\n");
    ok(bitmap.bmPlanes == 1, "\n");
    ok(bitmap.bmBitsPixel == 1, "\n");
    ok(bitmap.bmBits == ((void*)0), "\n");

    ok(GetObject(iconinfo2.hbmColor, sizeof(bitmap), &bitmap), "GetObject failed\n");
    ok(bitmap.bmType == 0, "\n");
    ok(bitmap.bmWidth == 8, "\n");
    ok(bitmap.bmHeight == 16, "\n");
    ok(bitmap.bmWidthBytes == 8 * bitmap.bmBitsPixel / 8, "\n");
    ok(bitmap.bmPlanes == 1, "\n");
    ok(bitmap.bmBitsPixel == screen_bpp, "%d\n", bitmap.bmBitsPixel);
    ok(bitmap.bmBits == ((void*)0), "\n");
    DeleteObject(iconinfo2.hbmMask);
    DeleteObject(iconinfo2.hbmColor);
    ok(DestroyIcon(hicon), "\n");

    DeleteObject(iconinfo.hbmMask);
    iconinfo.hbmMask = ((void*)0);
    hicon = CreateIconIndirect(&iconinfo);
    ok(hicon == 0, "should fail\n");

    DeleteObject(iconinfo.hbmColor);
    iconinfo.hbmColor = CreateCompatibleBitmap(GetDC(0), 16, 16);
    hicon = CreateIconIndirect(&iconinfo);
    ok(hicon == 0, "should fail\n");

    iconinfo.hbmMask = CreateCompatibleBitmap(GetDC(0), 8, 16);
    hicon = CreateIconIndirect(&iconinfo);
    ok(hicon != 0, "should not fail\n");

    ok(GetIconInfo(hicon, &iconinfo2), "\n");

    ok(GetObject(iconinfo2.hbmMask, sizeof(bitmap), &bitmap), "GetObject failed\n");
    ok(bitmap.bmType == 0, "\n");
    ok(bitmap.bmWidth == 8, "%ld\n", bitmap.bmWidth);
    ok(bitmap.bmHeight == 16, "%ld\n", bitmap.bmHeight);
    ok(bitmap.bmWidthBytes == 2, "%ld\n", bitmap.bmWidthBytes);
    ok(bitmap.bmPlanes == 1, "%d\n", bitmap.bmPlanes);
    ok(bitmap.bmBitsPixel == 1, "%d\n", bitmap.bmBitsPixel);
    ok(bitmap.bmBits == ((void*)0), "\n");

    ok(GetObject(iconinfo2.hbmColor, sizeof(bitmap), &bitmap), "GetObject failed\n");
    ok(bitmap.bmType == 0, "\n");
    ok(bitmap.bmWidth == 8, "%ld\n", bitmap.bmWidth);
    ok(bitmap.bmHeight == 16, "%ld\n", bitmap.bmHeight);
    ok(bitmap.bmWidthBytes == screen_bpp, "%ld\n", bitmap.bmWidthBytes);
    ok(bitmap.bmPlanes == 1, "%d\n", bitmap.bmPlanes);
    ok(bitmap.bmBitsPixel == screen_bpp, "%d\n", bitmap.bmBitsPixel);
    ok(bitmap.bmBits == ((void*)0), "\n");
    DeleteObject(iconinfo2.hbmMask);
    DeleteObject(iconinfo2.hbmColor);
    ok(DestroyIcon(hicon), "\n");
}
