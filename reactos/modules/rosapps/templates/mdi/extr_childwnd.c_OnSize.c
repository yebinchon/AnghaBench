
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WPARAM ;
typedef int LPARAM ;
typedef int ChildWnd ;


 scalar_t__ SIZE_MINIMIZED ;

__attribute__((used)) static void OnSize(ChildWnd* pChildWnd, WPARAM wParam, LPARAM lParam)
{
    if (wParam != SIZE_MINIMIZED) {

    }
}
