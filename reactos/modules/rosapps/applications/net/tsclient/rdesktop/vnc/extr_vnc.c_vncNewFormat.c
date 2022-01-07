
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rfbPixelFormat ;


 int * vnc_formats ;

rfbPixelFormat *
vncNewFormat(int depth)
{
 return &(vnc_formats[(depth + 1) / 8 - 1]);
}
