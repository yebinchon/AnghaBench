
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hWnd; } ;
typedef scalar_t__ HWND ;


 TYPE_1__* data ;

__attribute__((used)) static int get_iwnd(HWND hWnd)
{
    if(hWnd == data[0].hWnd) return 0;
    else if(hWnd == data[1].hWnd) return 1;
    else if(hWnd == data[2].hWnd) return 2;
    else if(hWnd == data[3].hWnd) return 3;
    else if(hWnd == data[4].hWnd) return 4;
    else return -1;
}
