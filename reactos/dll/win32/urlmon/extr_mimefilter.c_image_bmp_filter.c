
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;



__attribute__((used)) static BOOL image_bmp_filter(const BYTE *b, DWORD size)
{
    return size >= 14
        && b[0] == 0x42 && b[1] == 0x4d
        && *(const DWORD *)(b+6) == 0;
}
