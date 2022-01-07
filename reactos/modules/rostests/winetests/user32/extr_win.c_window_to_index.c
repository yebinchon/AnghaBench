
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;



__attribute__((used)) static int window_to_index(HWND hwnd, HWND *window, int size)
{
    int i;

    for (i = 0; i < size; i++)
    {
        if (!window[i]) break;
        if (window[i] == hwnd) return i;
    }
    return -1;
}
