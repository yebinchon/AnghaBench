
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int UpdateWindow (int ) ;

__attribute__((used)) static VOID
ImageView_UpdateWindow(HWND hwnd)
{
    InvalidateRect(hwnd, ((void*)0), FALSE);
    UpdateWindow(hwnd);
}
