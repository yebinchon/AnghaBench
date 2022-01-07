
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COLORREF ;



__attribute__((used)) static COLORREF get_nearest( int r, int g, int b )
{
    return (r*r + g*g + b*b < (255-r)*(255-r) + (255-g)*(255-g) + (255-b)*(255-b)) ? 0x000000 : 0xffffff;
}
