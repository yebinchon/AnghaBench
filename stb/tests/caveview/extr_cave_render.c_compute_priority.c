
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int view_dist_in_chunks ;

float compute_priority(int cx, int cy, float x, float y)
{
   float distx, disty, dist2;
   distx = (cx*16+8) - x;
   disty = (cy*16+8) - y;
   dist2 = distx*distx + disty*disty;
   return view_dist_in_chunks*view_dist_in_chunks * 16 * 16 - dist2;
}
