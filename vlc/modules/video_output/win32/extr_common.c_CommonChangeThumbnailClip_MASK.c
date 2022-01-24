#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  hparent; int /*<<< orphan*/  hvideownd; } ;
typedef  TYPE_2__ vout_display_sys_win32_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_22__ {TYPE_1__* lpVtbl; } ;
struct TYPE_21__ {int dwOSVersionInfoSize; int dwMajorVersion; } ;
struct TYPE_20__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {int /*<<< orphan*/  top; scalar_t__ bottom; int /*<<< orphan*/  left; scalar_t__ right; } ;
struct TYPE_17__ {scalar_t__ (* SetThumbnailClip ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__*) ;int /*<<< orphan*/  (* Release ) (TYPE_6__*) ;int /*<<< orphan*/  (* HrInit ) (TYPE_6__*) ;} ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ POINT ;
typedef  TYPE_5__ OSVERSIONINFO ;
typedef  TYPE_6__ ITaskbarList3 ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_TaskbarList ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GA_ROOT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  IID_ITaskbarList3 ; 
 unsigned int FUNC7 (TYPE_3__) ; 
 unsigned int FUNC8 (TYPE_3__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 scalar_t__ FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(vlc_object_t *obj, vout_display_sys_win32_t *sys, bool show)
{
    /* Windows 7 taskbar thumbnail code */
    OSVERSIONINFO winVer;
    winVer.dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
    if (!FUNC5(&winVer) || winVer.dwMajorVersion <= 5)
        return;

    if( FUNC3(FUNC1(NULL, COINIT_MULTITHREADED)) )
        FUNC14();

    void *ptr;
    if (S_OK == FUNC0(&CLSID_TaskbarList,
                                 NULL, CLSCTX_INPROC_SERVER,
                                 &IID_ITaskbarList3,
                                 &ptr)) {
        ITaskbarList3 *taskbl = ptr;
        taskbl->lpVtbl->HrInit(taskbl);

        HWND hroot = FUNC4(sys->hvideownd, GA_ROOT);
        RECT video;
        if (show) {
            FUNC6(sys->hparent, &video);
            POINT client = {video.left, video.top};
            if (FUNC9(hroot, &client))
            {
                unsigned int width = FUNC8(video);
                unsigned int height = FUNC7(video);
                video.left = client.x;
                video.top = client.y;
                video.right = video.left + width;
                video.bottom = video.top + height;
            }
        }
        HRESULT hr;
        hr = taskbl->lpVtbl->SetThumbnailClip(taskbl, hroot,
                                                 show ? &video : NULL);
        if ( hr != S_OK )
            FUNC10(obj, "SetThumbNailClip failed: 0x%lX", hr);

        taskbl->lpVtbl->Release(taskbl);
    }
    FUNC2();
}