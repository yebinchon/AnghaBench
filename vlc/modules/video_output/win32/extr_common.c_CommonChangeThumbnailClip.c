
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int hparent; int hvideownd; } ;
typedef TYPE_2__ vout_display_sys_win32_t ;
typedef int vlc_object_t ;
struct TYPE_22__ {TYPE_1__* lpVtbl; } ;
struct TYPE_21__ {int dwOSVersionInfoSize; int dwMajorVersion; } ;
struct TYPE_20__ {int y; int x; int member_1; int member_0; } ;
struct TYPE_19__ {int top; scalar_t__ bottom; int left; scalar_t__ right; } ;
struct TYPE_17__ {scalar_t__ (* SetThumbnailClip ) (TYPE_6__*,int ,TYPE_3__*) ;int (* Release ) (TYPE_6__*) ;int (* HrInit ) (TYPE_6__*) ;} ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ POINT ;
typedef TYPE_5__ OSVERSIONINFO ;
typedef TYPE_6__ ITaskbarList3 ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_TaskbarList ;
 int COINIT_MULTITHREADED ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoInitializeEx (int *,int ) ;
 int CoUninitialize () ;
 scalar_t__ FAILED (int ) ;
 int GA_ROOT ;
 int GetAncestor (int ,int ) ;
 int GetVersionEx (TYPE_5__*) ;
 int GetWindowRect (int ,TYPE_3__*) ;
 int IID_ITaskbarList3 ;
 unsigned int RECTHeight (TYPE_3__) ;
 unsigned int RECTWidth (TYPE_3__) ;
 scalar_t__ S_OK ;
 scalar_t__ ScreenToClient (int ,TYPE_4__*) ;
 int msg_Err (int *,char*,scalar_t__) ;
 int stub1 (TYPE_6__*) ;
 scalar_t__ stub2 (TYPE_6__*,int ,TYPE_3__*) ;
 int stub3 (TYPE_6__*) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void CommonChangeThumbnailClip(vlc_object_t *obj, vout_display_sys_win32_t *sys, bool show)
{

    OSVERSIONINFO winVer;
    winVer.dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
    if (!GetVersionEx(&winVer) || winVer.dwMajorVersion <= 5)
        return;

    if( FAILED(CoInitializeEx(((void*)0), COINIT_MULTITHREADED)) )
        vlc_assert_unreachable();

    void *ptr;
    if (S_OK == CoCreateInstance(&CLSID_TaskbarList,
                                 ((void*)0), CLSCTX_INPROC_SERVER,
                                 &IID_ITaskbarList3,
                                 &ptr)) {
        ITaskbarList3 *taskbl = ptr;
        taskbl->lpVtbl->HrInit(taskbl);

        HWND hroot = GetAncestor(sys->hvideownd, GA_ROOT);
        RECT video;
        if (show) {
            GetWindowRect(sys->hparent, &video);
            POINT client = {video.left, video.top};
            if (ScreenToClient(hroot, &client))
            {
                unsigned int width = RECTWidth(video);
                unsigned int height = RECTHeight(video);
                video.left = client.x;
                video.top = client.y;
                video.right = video.left + width;
                video.bottom = video.top + height;
            }
        }
        HRESULT hr;
        hr = taskbl->lpVtbl->SetThumbnailClip(taskbl, hroot,
                                                 show ? &video : ((void*)0));
        if ( hr != S_OK )
            msg_Err(obj, "SetThumbNailClip failed: 0x%lX", hr);

        taskbl->lpVtbl->Release(taskbl);
    }
    CoUninitialize();
}
