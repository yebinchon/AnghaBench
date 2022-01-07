
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_error (char*) ;
 int gl_scroll ;
 int gl_termw ;

void
gl_setwidth(int w)
{
    if (w > 250)
     w = 250;
    if (w > 20) {
 gl_termw = w;
 gl_scroll = w / 3;
    } else {
 gl_error("\n*** Error: minimum screen width is 21\n");
    }
}
