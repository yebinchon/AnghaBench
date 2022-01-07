
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float hex ;


 int glColor3f (float,float,float) ;

void glColorHex(unsigned int hex)
{
 float r = ((hex>>16)&0xff) / 255.0f;
 float g = ((hex>>8)&0xff) / 255.0f;
 float b = ((hex)&0xff) / 255.0f;
 glColor3f(r, g, b);
}
