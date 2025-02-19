
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int x0; int x1; int y0; int y1; } ;
struct TYPE_6__ {int y0; int y1; } ;
struct TYPE_8__ {TYPE_2__ bbox; TYPE_1__ clip; } ;
struct TYPE_9__ {int* table; int* index; TYPE_3__ super; } ;
typedef TYPE_4__ fz_edgebuffer ;
typedef int fz_context ;
typedef int fixed ;


 int DIRN_DOWN ;
 int DIRN_UP ;
 int assert (int) ;
 scalar_t__ debugging_scan_converter ;
 int fixed2int (int) ;
 int fixed_1 ;
 int fixed_half ;
 int fz_stderr (int *) ;
 int fz_write_printf (int *,int ,char*,int,int) ;
 int int2fixed (int) ;

__attribute__((used)) static void mark_line(fz_context *ctx, fz_edgebuffer *eb, fixed sx, fixed sy, fixed ex, fixed ey)
{
 int base_y = eb->super.clip.y0;
 int height = eb->super.clip.y1 - eb->super.clip.y0;
 int *table = eb->table;
 int *index = eb->index;
 int delta;
 int iy, ih;
 fixed clip_sy, clip_ey;
 int dirn = DIRN_UP;
 int *row;

 if (fixed2int(sy + fixed_half-1) == fixed2int(ey + fixed_half-1))
  return;
 if (sy > ey) {
  int t;
  t = sy; sy = ey; ey = t;
  t = sx; sx = ex; ex = t;
  dirn = DIRN_DOWN;
 }

 if (fixed2int(sx) < eb->super.bbox.x0)
  eb->super.bbox.x0 = fixed2int(sx);
 if (fixed2int(sx + fixed_1 - 1) > eb->super.bbox.x1)
  eb->super.bbox.x1 = fixed2int(sx + fixed_1 - 1);
 if (fixed2int(ex) < eb->super.bbox.x0)
  eb->super.bbox.x0 = fixed2int(ex);
 if (fixed2int(ex + fixed_1 - 1) > eb->super.bbox.x1)
  eb->super.bbox.x1 = fixed2int(ex + fixed_1 - 1);

 if (fixed2int(sy) < eb->super.bbox.y0)
  eb->super.bbox.y0 = fixed2int(sy);
 if (fixed2int(ey + fixed_1 - 1) > eb->super.bbox.y1)
  eb->super.bbox.y1 = fixed2int(ey + fixed_1 - 1);




 clip_sy = ((sy + fixed_half - 1) & ~(fixed_1-1)) | fixed_half;

 clip_ey = ((ey - fixed_half - 1) & ~(fixed_1-1)) | fixed_half;

 if (clip_sy < int2fixed(base_y) + fixed_half)
  clip_sy = int2fixed(base_y) + fixed_half;
 if (ey <= clip_sy)
  return;
 if (clip_ey > int2fixed(base_y + height - 1) + fixed_half)
  clip_ey = int2fixed(base_y + height - 1) + fixed_half;
 if (sy > clip_ey)
  return;
 delta = clip_sy - sy;
 if (delta > 0)
 {
  int dx = ex - sx;
  int dy = ey - sy;
  int advance = (int)(((int64_t)dx * delta + (dy>>1)) / dy);
  sx += advance;
  sy += delta;
 }
 ex -= sx;
 ey -= sy;
 clip_ey -= clip_sy;
 delta = ey - clip_ey;
 if (delta > 0)
 {
  int advance = (int)(((int64_t)ex * delta + (ey>>1)) / ey);
  ex -= advance;
  ey -= delta;
 }
 ih = fixed2int(ey);
 assert(ih >= 0);
 iy = fixed2int(sy) - base_y;




 assert(iy >= 0 && iy < height);

 row = &table[index[iy]];
 *row = (*row)+1;
 row[*row] = (sx&~1) | dirn;
 if (ih == 0)
  return;
 if (ex >= 0) {
  int x_inc, n_inc, f;




  x_inc = ex/ih;
  n_inc = ex-(x_inc*ih);
  f = ih>>1;
  delta = ih;
  do {
   int count;
   iy++;
   sx += x_inc;
   f -= n_inc;
   if (f < 0) {
    f += ih;
    sx++;
   }
   assert(iy >= 0 && iy < height);
   row = &table[index[iy]];
   count = *row = (*row)+1;
   row[count] = (sx&~1) | dirn;
  } while (--delta);
 } else {
  int x_dec, n_dec, f;

  ex = -ex;



  x_dec = ex/ih;
  n_dec = ex-(x_dec*ih);
  f = ih>>1;
  delta = ih;
  do {
   int count;
   iy++;
   sx -= x_dec;
   f -= n_dec;
   if (f < 0) {
    f += ih;
    sx--;
   }
   assert(iy >= 0 && iy < height);
   row = &table[index[iy]];
   count = *row = (*row)+1;
   row[count] = (sx&~1) | dirn;
  } while (--delta);
 }
}
