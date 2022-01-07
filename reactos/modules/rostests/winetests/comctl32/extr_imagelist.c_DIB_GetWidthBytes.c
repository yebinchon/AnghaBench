
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;



__attribute__((used)) static INT DIB_GetWidthBytes( int width, int bpp )
{
    return ((width * bpp + 31) / 8) & ~3;
}
