
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int HWND ;


 int GetClientRect (int ,int *) ;
 int resize_frame_rect (int ,int *) ;

__attribute__((used)) static void resize_frame_client(HWND hwnd)
{
 RECT rect;

 GetClientRect(hwnd, &rect);

 resize_frame_rect(hwnd, &rect);
}
