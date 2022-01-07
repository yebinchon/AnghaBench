
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
colour_dist_sq(int R, int G, int B, int r, int g, int b)
{
 return ((R - r) * (R - r) + (G - g) * (G - g) + (B - b) * (B - b));
}
