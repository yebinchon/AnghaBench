
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAR_MAX_HEIGHT ;
 int glColor4f (float,float,float,float) ;

__attribute__((used)) static void setBarColor(float f_height)
{
    float r, b;


    r = -1.f + 2 / 4.2f * f_height;
    b = 2.f - 2 / 4.2f * f_height;



    r = r > 1.f ? 1.f : r;
    b = b > 1.f ? 1.f : b;

    r = r < 0.f ? 0.f : r;
    b = b < 0.f ? 0.f : b;


    glColor4f(r, 0.f, b, 1.f);
}
