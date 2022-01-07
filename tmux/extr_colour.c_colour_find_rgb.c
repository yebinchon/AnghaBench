
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int COLOUR_FLAG_256 ;
 int colour_dist_sq (int,int,int,int,int,int) ;
 int colour_to_6cube (int) ;

int
colour_find_rgb(u_char r, u_char g, u_char b)
{
 static const int q2c[6] = { 0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff };
 int qr, qg, qb, cr, cg, cb, d, idx;
 int grey_avg, grey_idx, grey;


 qr = colour_to_6cube(r); cr = q2c[qr];
 qg = colour_to_6cube(g); cg = q2c[qg];
 qb = colour_to_6cube(b); cb = q2c[qb];


 if (cr == r && cg == g && cb == b)
  return ((16 + (36 * qr) + (6 * qg) + qb) | COLOUR_FLAG_256);


 grey_avg = (r + g + b) / 3;
 if (grey_avg > 238)
  grey_idx = 23;
 else
  grey_idx = (grey_avg - 3) / 10;
 grey = 8 + (10 * grey_idx);


 d = colour_dist_sq(cr, cg, cb, r, g, b);
 if (colour_dist_sq(grey, grey, grey, r, g, b) < d)
  idx = 232 + grey_idx;
 else
  idx = 16 + (36 * qr) + (6 * qg) + qb;
 return (idx | COLOUR_FLAG_256);
}
