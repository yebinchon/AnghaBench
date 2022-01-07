
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_3; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int AdjustWindowRect (TYPE_1__*,int,int ) ;
 int CW_USEDEFAULT ;
 int CreateWindowA (char*,char*,int,int ,int ,scalar_t__,scalar_t__,int *,int *,int *,int *) ;
 int FALSE ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;

__attribute__((used)) static HWND create_window(void)
{
    RECT r = {0, 0, 640, 480};

    AdjustWindowRect(&r, WS_OVERLAPPEDWINDOW | WS_VISIBLE, FALSE);

    return CreateWindowA("static", "d3drm_test", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
            CW_USEDEFAULT, CW_USEDEFAULT, r.right - r.left, r.bottom - r.top, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
