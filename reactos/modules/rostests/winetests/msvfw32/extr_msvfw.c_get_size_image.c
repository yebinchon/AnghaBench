
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int LONG ;
typedef int DWORD ;


 int abs (int) ;

__attribute__((used)) static DWORD get_size_image(LONG width, LONG height, WORD depth)
{
    DWORD ret = width * depth;
    ret = (ret + 7) / 8;
    ret = (ret + 3) & ~3;
    ret *= abs(height);
    return ret;
}
