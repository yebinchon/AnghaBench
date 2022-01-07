
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_color_converter ;


 float fung (float) ;
 int fz_clamp (float,int ,int) ;
 float sqrtf (int ) ;

__attribute__((used)) static void lab_to_rgb(fz_context *ctx, fz_color_converter *cc, const float *lab, float *rgb)
{

 float lstar, astar, bstar, l, m, n, x, y, z, r, g, b;
 lstar = lab[0];
 astar = lab[1];
 bstar = lab[2];
 m = (lstar + 16) / 116;
 l = m + astar / 500;
 n = m - bstar / 200;
 x = fung(l);
 y = fung(m);
 z = fung(n);
 r = (3.240449f * x + -1.537136f * y + -0.498531f * z) * 0.830026f;
 g = (-0.969265f * x + 1.876011f * y + 0.041556f * z) * 1.05452f;
 b = (0.055643f * x + -0.204026f * y + 1.057229f * z) * 1.1003f;
 rgb[0] = sqrtf(fz_clamp(r, 0, 1));
 rgb[1] = sqrtf(fz_clamp(g, 0, 1));
 rgb[2] = sqrtf(fz_clamp(b, 0, 1));
}
