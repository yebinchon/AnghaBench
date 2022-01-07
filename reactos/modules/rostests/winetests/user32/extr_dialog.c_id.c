
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 scalar_t__* hwnd ;
 unsigned int numwnds ;

__attribute__((used)) static int id (HWND h)
{
    unsigned int i;
    for (i = 0; i < numwnds; i++)
        if (hwnd[i] == h)
            return i;
    return -1;
}
