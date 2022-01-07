
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PAINTSTRUCT ;
typedef int HWND ;
typedef scalar_t__ HDC ;


 scalar_t__ BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;

__attribute__((used)) static void
Ghost_OnPaint(HWND hwnd)
{
    PAINTSTRUCT ps;
    HDC hdc = BeginPaint(hwnd, &ps);
    if (hdc)
    {

        EndPaint(hwnd, &ps);
    }
}
