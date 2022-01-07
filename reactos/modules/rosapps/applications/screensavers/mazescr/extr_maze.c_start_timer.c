
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int SetTimer (int ,int,int,int *) ;

__attribute__((used)) static void start_timer(HWND hWnd, int iTimeout)
{
    SetTimer(hWnd, 1, iTimeout, ((void*)0));
}
