
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_luminosity_rgb (unsigned char*,unsigned char*,unsigned char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
fz_color_rgb(unsigned char *rr, unsigned char *rg, unsigned char *rb, int br, int bg, int bb, int sr, int sg, int sb)
{
 fz_luminosity_rgb(rr, rg, rb, sr, sg, sb, br, bg, bb);
}
