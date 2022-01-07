
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static inline void pixel_set_trans(DWORD* pixel, BOOL transparent)
{
    if (transparent) *pixel = 0;
    else *pixel |= 0xff000000;
}
