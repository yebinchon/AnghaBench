
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int resize_frame_rect (int ,TYPE_1__*) ;

__attribute__((used)) static void resize_frame(HWND hwnd, int cx, int cy)
{
 RECT rect;

 rect.left = 0;
 rect.top = 0;
 rect.right = cx;
 rect.bottom = cy;

 resize_frame_rect(hwnd, &rect);
}
