#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int width; int height; int** message; } ;
struct TYPE_8__ {int right; int left; int bottom; int top; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ MATRIX_MESSAGE ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DT_CALCRECT ; 
 int DT_CENTER ; 
 int DT_VCENTER ; 
 int DT_WORDBREAK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXMSG_HEIGHT ; 
 int /*<<< orphan*/  MAXMSG_WIDTH ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  g_hFont ; 

void FUNC13(MATRIX_MESSAGE *msg, HFONT hFont, TCHAR *text)
{
	HDC		hdc;
	RECT	rect;
	int		x, y;

	HDC		hdcMessage;
	HBITMAP hbmMessage;

	HANDLE	hOldFont, hOldBmp;

	//
	// Create a monochrome off-screen buffer
	//
	hdc = FUNC6(NULL);

	hdcMessage = FUNC1(hdc);
	hbmMessage = FUNC0(MAXMSG_WIDTH, MAXMSG_HEIGHT, 1, 1, 0);
	hOldBmp    = FUNC11(hdcMessage, hbmMessage);

	FUNC10(NULL, hdc);

	//
	// Draw text into bitmap
	//
	FUNC12(&rect, 0, 0, msg->width, MAXMSG_HEIGHT);
	FUNC5(hdcMessage, &rect, FUNC8(WHITE_BRUSH));

	hOldFont = FUNC11(hdcMessage, g_hFont);
	FUNC4(hdcMessage, text, -1, &rect, DT_CENTER|DT_VCENTER|DT_WORDBREAK|DT_CALCRECT);

	FUNC9(&rect, (msg->width-(rect.right-rect.left))/2, (msg->height-(rect.bottom-rect.top))/2);
	FUNC4(hdcMessage, text, -1, &rect, DT_CENTER|DT_VCENTER|DT_WORDBREAK);

	//
	// Convert bitmap into an array of cells for easy drawing
	//
	for(y = 0; y < msg->height; y++)
	{
		for(x = 0; x < msg->width; x++)
		{
			msg->message[x][y] = FUNC7(hdcMessage, x, y) ? 0 : 1;
		}
	}

	//
	//	Cleanup
	//
	FUNC11(hdcMessage, hOldFont);
	FUNC11(hdcMessage, hOldBmp);

	FUNC2(hdcMessage);
	FUNC3(hbmMessage);
}