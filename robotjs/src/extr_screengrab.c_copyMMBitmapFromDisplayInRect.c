
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int * data; scalar_t__ bits_per_pixel; scalar_t__ bytes_per_line; } ;
typedef TYPE_4__ XImage ;
struct TYPE_16__ {int biSize; long biWidth; long biHeight; int biPlanes; int biBitCount; scalar_t__ biClrImportant; scalar_t__ biClrUsed; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int biCompression; } ;
struct TYPE_20__ {TYPE_3__ bmiHeader; } ;
struct TYPE_19__ {size_t bytewidth; size_t height; void* imageBuffer; } ;
struct TYPE_15__ {int width; int height; } ;
struct TYPE_14__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_18__ {TYPE_2__ size; TYPE_1__ origin; } ;
typedef TYPE_5__ MMRect ;
typedef TYPE_6__* MMBitmapRef ;
typedef int * HDC ;
typedef int HBITMAP ;
typedef int Display ;
typedef scalar_t__ DWORD ;
typedef int CGImageRef ;
typedef int CGDirectDisplayID ;
typedef int CFDataRef ;
typedef TYPE_7__ BITMAPINFO ;


 int AllPlanes ;
 int BI_RGB ;
 int BitBlt (int *,int,int,int,int,int *,scalar_t__,scalar_t__,int ) ;
 int CFDataGetBytes (int ,int ,int*) ;
 size_t CFDataGetLength (int ) ;
 int CFRangeMake (int ,size_t) ;
 int CFRelease (int ) ;
 int CGDataProviderCopyData (int ) ;
 int CGDisplayCreateImageForRect (int ,int ) ;
 int CGImageGetBitsPerPixel (int ) ;
 int CGImageGetBytesPerRow (int ) ;
 int CGImageGetDataProvider (int ) ;
 int CGImageGetHeight (int ) ;
 int CGImageGetWidth (int ) ;
 int CGImageRelease (int ) ;
 int CGMainDisplayID () ;
 int CGRectMake (scalar_t__,scalar_t__,int,int) ;
 int * CreateCompatibleDC (int *) ;
 int CreateDIBSection (int *,TYPE_7__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int *) ;
 int DeleteObject (int ) ;
 int * GetDC (int *) ;
 int ReleaseDC (int *,int *) ;
 int SRCCOPY ;
 int * SelectObject (int *,int ) ;
 int XCloseDisplay (int *) ;
 int XDefaultRootWindow (int *) ;
 int XDestroyImage (TYPE_4__*) ;
 TYPE_4__* XGetImage (int *,int ,int,int,unsigned int,unsigned int,int ,int ) ;
 int * XOpenDisplay (int *) ;
 int ZPixmap ;
 TYPE_6__* createMMBitmap (int*,int,int,int,int,int) ;
 void* malloc (size_t) ;
 int memcpy (void*,void*,int) ;

MMBitmapRef copyMMBitmapFromDisplayInRect(MMRect rect)
{
}
