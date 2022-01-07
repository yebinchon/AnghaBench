
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float miterlimit; float linewidth; int linejoin; } ;
typedef TYPE_1__ sctx ;
typedef int fz_linejoin ;
typedef int fz_context ;


 float FLT_EPSILON ;




 int assert (int ) ;
 scalar_t__ find_normal_vectors (float,float,float,float*,float*) ;
 int fz_add_arc (int *,TYPE_1__*,float,float,float,float,float,float,int) ;
 int fz_add_line (int *,TYPE_1__*,float,float,float,float,int) ;
 float sqrtf (float) ;

__attribute__((used)) static void
fz_add_line_join(fz_context *ctx, sctx *s, float ax, float ay, float bx, float by, float cx, float cy, int join_under)
{
 float miterlimit = s->miterlimit;
 float linewidth = s->linewidth;
 fz_linejoin linejoin = s->linejoin;
 float dx0, dy0;
 float dx1, dy1;
 float dlx0, dly0;
 float dlx1, dly1;
 float dmx, dmy;
 float dmr2;
 float scale;
 float cross;
 int rev = 0;

 dx0 = bx - ax;
 dy0 = by - ay;

 dx1 = cx - bx;
 dy1 = cy - by;

 cross = dx1 * dy0 - dx0 * dy1;

 if (cross < 0)
 {
  float tmp;
  tmp = dx1; dx1 = -dx0; dx0 = -tmp;
  tmp = dy1; dy1 = -dy0; dy0 = -tmp;
  cross = -cross;
  rev = !rev;
 }

 if (find_normal_vectors(dx0, dy0, linewidth, &dlx0, &dly0))
  linejoin = 131;

 if (find_normal_vectors(dx1, dy1, linewidth, &dlx1, &dly1))
  linejoin = 131;

 dmx = (dlx0 + dlx1) * 0.5f;
 dmy = (dly0 + dly1) * 0.5f;
 dmr2 = dmx * dmx + dmy * dmy;

 if (cross * cross < FLT_EPSILON && dx0 * dx1 + dy0 * dy1 >= 0)
  linejoin = 131;



 if (linejoin == 129)
 {
  if (cross == 0)
   linejoin = 131;
  else if (dmr2 * miterlimit * miterlimit >= linewidth * linewidth)
   linejoin = 130;
 }
 else if (linejoin == 130)
  if (dmr2 * miterlimit * miterlimit < linewidth * linewidth)
   linejoin = 131;

 if (join_under)
 {
  fz_add_line(ctx, s, bx + dlx1, by + dly1, bx + dlx0, by + dly0, !rev);
 }
 else if (rev)
 {
  fz_add_line(ctx, s, bx + dlx1, by + dly1, bx, by, 0);
  fz_add_line(ctx, s, bx, by, bx + dlx0, by + dly0, 0);
 }
 else
 {
  fz_add_line(ctx, s, bx, by, bx + dlx0, by + dly0, 1);
  fz_add_line(ctx, s, bx + dlx1, by + dly1, bx, by, 1);
 }

 switch (linejoin)
 {
 case 129:
 {
  float k, t0x, t0y, t1x, t1y;

  scale = linewidth * linewidth / dmr2;
  dmx *= scale;
  dmy *= scale;
  k = (scale - linewidth * miterlimit / sqrtf(dmr2)) / (scale - 1);
  t0x = bx - dmx + k * (dmx - dlx0);
  t0y = by - dmy + k * (dmy - dly0);
  t1x = bx - dmx + k * (dmx - dlx1);
  t1y = by - dmy + k * (dmy - dly1);

  if (rev)
  {
   fz_add_line(ctx, s, t1x, t1y, bx - dlx1, by - dly1, 1);
   fz_add_line(ctx, s, t0x, t0y, t1x, t1y, 1);
   fz_add_line(ctx, s, bx - dlx0, by - dly0, t0x, t0y, 1);
  }
  else
  {
   fz_add_line(ctx, s, bx - dlx0, by - dly0, t0x, t0y, 0);
   fz_add_line(ctx, s, t0x, t0y, t1x, t1y, 0);
   fz_add_line(ctx, s, t1x, t1y, bx - dlx1, by - dly1, 0);
  }
  break;
 }
 case 130:
  scale = linewidth * linewidth / dmr2;
  dmx *= scale;
  dmy *= scale;

  if (rev)
  {
   fz_add_line(ctx, s, bx - dmx, by - dmy, bx - dlx1, by - dly1, 1);
   fz_add_line(ctx, s, bx - dlx0, by - dly0, bx - dmx, by - dmy, 1);
  }
  else
  {
   fz_add_line(ctx, s, bx - dlx0, by - dly0, bx - dmx, by - dmy, 0);
   fz_add_line(ctx, s, bx - dmx, by - dmy, bx - dlx1, by - dly1, 0);
  }
  break;

 case 131:
  fz_add_line(ctx, s, bx - dlx0, by - dly0, bx - dlx1, by - dly1, rev);
  break;

 case 128:
  fz_add_arc(ctx, s, bx, by, -dlx0, -dly0, -dlx1, -dly1, rev);
  break;

 default:
  assert("Invalid line join" == ((void*)0));
 }
}
