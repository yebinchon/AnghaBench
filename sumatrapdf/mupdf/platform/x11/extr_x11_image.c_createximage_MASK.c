#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ shmid; char* shmaddr; int /*<<< orphan*/  readOnly; } ;
typedef  TYPE_1__ XShmSegmentInfo ;
struct TYPE_12__ {int bytes_per_line; int height; char* data; } ;
typedef  TYPE_2__ XImage ;
typedef  int /*<<< orphan*/  Visual ;
struct TYPE_13__ {scalar_t__ useshm; } ;
typedef  int /*<<< orphan*/  Status ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_RMID ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPixmap ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ info ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static XImage *
FUNC13(Display *dpy, Visual *vis, XShmSegmentInfo *xsi, int depth, int w, int h)
{
	XImage *img;
	Status status;

	if (!FUNC4(dpy))
		goto fallback;
	if (!info.useshm)
		goto fallback;

	img = FUNC3(dpy, vis, depth, ZPixmap, NULL, xsi, w, h);
	if (!img)
	{
		FUNC7(stderr, "warn: could not XShmCreateImage\n");
		goto fallback;
	}

	xsi->shmid = FUNC12(IPC_PRIVATE,
		img->bytes_per_line * img->height,
		IPC_CREAT | 0777);
	if (xsi->shmid < 0)
	{
		FUNC1(img);
		FUNC7(stderr, "warn: could not shmget\n");
		goto fallback;
	}

	img->data = xsi->shmaddr = FUNC9(xsi->shmid, NULL, 0);
	if (img->data == (char*)-1)
	{
		FUNC1(img);
		FUNC7(stderr, "warn: could not shmat\n");
		goto fallback;
	}

	xsi->readOnly = False;
	status = FUNC2(dpy, xsi);
	if (!status)
	{
		FUNC11(xsi->shmaddr);
		FUNC1(img);
		FUNC7(stderr, "warn: could not XShmAttach\n");
		goto fallback;
	}

	FUNC5(dpy, False);

	FUNC10(xsi->shmid, IPC_RMID, NULL);

	return img;

fallback:
	info.useshm = 0;

	img = FUNC0(dpy, vis, depth, ZPixmap, 0, NULL, w, h, 32, 0);
	if (!img)
	{
		FUNC7(stderr, "fail: could not XCreateImage");
		FUNC6();
	}

	img->data = FUNC8(h * img->bytes_per_line);
	if (!img->data)
	{
		FUNC7(stderr, "fail: could not malloc");
		FUNC6();
	}

	return img;
}