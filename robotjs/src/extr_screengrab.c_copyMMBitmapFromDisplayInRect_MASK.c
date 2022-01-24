#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_17__ {int /*<<< orphan*/ * data; scalar_t__ bits_per_pixel; scalar_t__ bytes_per_line; } ;
typedef  TYPE_4__ XImage ;
struct TYPE_16__ {int biSize; long biWidth; long biHeight; int biPlanes; int biBitCount; scalar_t__ biClrImportant; scalar_t__ biClrUsed; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; } ;
struct TYPE_20__ {TYPE_3__ bmiHeader; } ;
struct TYPE_19__ {size_t bytewidth; size_t height; void* imageBuffer; } ;
struct TYPE_15__ {int width; int height; } ;
struct TYPE_14__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_18__ {TYPE_2__ size; TYPE_1__ origin; } ;
typedef  TYPE_5__ MMRect ;
typedef  TYPE_6__* MMBitmapRef ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  Display ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CGImageRef ;
typedef  int /*<<< orphan*/  CGDirectDisplayID ;
typedef  int /*<<< orphan*/  CFDataRef ;
typedef  TYPE_7__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  AllPlanes ; 
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 TYPE_4__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZPixmap ; 
 TYPE_6__* FUNC27 (int*,int,int,int,int,int) ; 
 void* FUNC28 (size_t) ; 
 int /*<<< orphan*/  FUNC29 (void*,void*,int) ; 

MMBitmapRef FUNC30(MMRect rect)
{
#if defined(IS_MACOSX)

	MMBitmapRef bitmap = NULL;
	uint8_t *buffer = NULL;
	size_t bufferSize = 0;

	CGDirectDisplayID displayID = CGMainDisplayID();

	CGImageRef image = CGDisplayCreateImageForRect(displayID,
		CGRectMake(rect.origin.x,
			rect.origin.y,
			rect.size.width,
			rect.size.height));

	if (!image) { return NULL; }

	CFDataRef imageData = CGDataProviderCopyData(CGImageGetDataProvider(image));

	if (!imageData) { return NULL; }

	bufferSize = CFDataGetLength(imageData);
	buffer = malloc(bufferSize);

	CFDataGetBytes(imageData, CFRangeMake(0,bufferSize), buffer);

	bitmap = createMMBitmap(buffer,
		CGImageGetWidth(image),
		CGImageGetHeight(image),
		CGImageGetBytesPerRow(image),
		CGImageGetBitsPerPixel(image),
		CGImageGetBitsPerPixel(image) / 8);

	CFRelease(imageData);

	CGImageRelease(image);

	return bitmap;

#elif defined(USE_X11)
	MMBitmapRef bitmap;

	Display *display = XOpenDisplay(NULL);
	XImage *image = XGetImage(display,
	                          XDefaultRootWindow(display),
	                          (int)rect.origin.x,
	                          (int)rect.origin.y,
	                          (unsigned int)rect.size.width,
	                          (unsigned int)rect.size.height,
	                          AllPlanes, ZPixmap);
	XCloseDisplay(display);
	if (image == NULL) return NULL;

	bitmap = createMMBitmap((uint8_t *)image->data,
	                        rect.size.width,
	                        rect.size.height,
	                        (size_t)image->bytes_per_line,
	                        (uint8_t)image->bits_per_pixel,
	                        (uint8_t)image->bits_per_pixel / 8);
	image->data = NULL; /* Steal ownership of bitmap data so we don't have to
	                     * copy it. */
	XDestroyImage(image);

	return bitmap;
#elif defined(IS_WINDOWS)
	MMBitmapRef bitmap;
	void *data;
	HDC screen = NULL, screenMem = NULL;
	HBITMAP dib;
	BITMAPINFO bi;

	/* Initialize bitmap info. */
	bi.bmiHeader.biSize = sizeof(bi.bmiHeader);
   	bi.bmiHeader.biWidth = (long)rect.size.width;
   	bi.bmiHeader.biHeight = -(long)rect.size.height; /* Non-cartesian, please */
   	bi.bmiHeader.biPlanes = 1;
   	bi.bmiHeader.biBitCount = 32;
   	bi.bmiHeader.biCompression = BI_RGB;
   	bi.bmiHeader.biSizeImage = (DWORD)(4 * rect.size.width * rect.size.height);
	bi.bmiHeader.biXPelsPerMeter = 0;
	bi.bmiHeader.biYPelsPerMeter = 0;
	bi.bmiHeader.biClrUsed = 0;
	bi.bmiHeader.biClrImportant = 0;

	screen = GetDC(NULL); /* Get entire screen */
	if (screen == NULL) return NULL;

	/* Get screen data in display device context. */
   	dib = CreateDIBSection(screen, &bi, DIB_RGB_COLORS, &data, NULL, 0);

	/* Copy the data into a bitmap struct. */
	if ((screenMem = CreateCompatibleDC(screen)) == NULL ||
	    SelectObject(screenMem, dib) == NULL ||
	    !BitBlt(screenMem,
	            (int)0,
	            (int)0,
	            (int)rect.size.width,
	            (int)rect.size.height,
				screen,
				rect.origin.x,
				rect.origin.y,
				SRCCOPY)) {
		
		/* Error copying data. */
		ReleaseDC(NULL, screen);
		DeleteObject(dib);
		if (screenMem != NULL) DeleteDC(screenMem);

		return NULL;
	}

	bitmap = createMMBitmap(NULL,
	                        rect.size.width,
	                        rect.size.height,
	                        4 * rect.size.width,
	                        (uint8_t)bi.bmiHeader.biBitCount,
	                        4);

	/* Copy the data to our pixel buffer. */
	if (bitmap != NULL) {
		bitmap->imageBuffer = malloc(bitmap->bytewidth * bitmap->height);
		memcpy(bitmap->imageBuffer, data, bitmap->bytewidth * bitmap->height);
	}

	ReleaseDC(NULL, screen);
	DeleteObject(dib);
	DeleteDC(screenMem);

	return bitmap;
#endif
}