
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_error (char*) ;
 int gl_termh ;

void
gl_setheight(int w)
{
    if (w > 10) {
 gl_termh = w;
    } else {
 gl_error("\n*** Error: minimum screen height is 10\n");
    }
}
