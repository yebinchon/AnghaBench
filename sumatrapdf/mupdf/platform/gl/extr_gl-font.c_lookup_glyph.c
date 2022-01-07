
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct key {float size; int gid; unsigned char subx; unsigned char suby; int * font; } ;
struct glyph {int w; int h; scalar_t__ t; scalar_t__ s; int top; int lsb; } ;
struct TYPE_11__ {int w; int h; int samples; int y; int x; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_12__ {float e; float f; } ;
typedef TYPE_2__ fz_matrix ;
typedef int fz_font ;
struct TYPE_13__ {scalar_t__ font; } ;
struct TYPE_14__ {struct glyph glyph; TYPE_3__ key; } ;


 int GL_ALPHA ;
 int GL_QUADS ;
 int GL_TEXTURE_2D ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int GL_UNSIGNED_BYTE ;
 int MAXGLYPHS ;
 scalar_t__ PADDING ;
 int clear_font_cache () ;
 int ctx ;
 int fz_drop_pixmap (int ,TYPE_1__*) ;
 TYPE_1__* fz_render_glyph_pixmap (int ,int *,int,TYPE_2__*,int *,int) ;
 TYPE_2__ fz_scale (float,float) ;
 int fz_subpixel_adjust (int ,TYPE_2__*,TYPE_2__*,unsigned char*,unsigned char*) ;
 scalar_t__ g_cache_h ;
 scalar_t__ g_cache_row_h ;
 scalar_t__ g_cache_row_x ;
 scalar_t__ g_cache_row_y ;
 scalar_t__ g_cache_w ;
 TYPE_4__* g_table ;
 int g_table_load ;
 int glBegin (int ) ;
 int glEnd () ;
 int glPixelStorei (int ,int) ;
 int glTexSubImage2D (int ,int ,scalar_t__,scalar_t__,int,int,int ,int ,int ) ;
 unsigned int lookup_table (struct key*) ;
 int memcpy (TYPE_3__*,struct key*,int) ;
 int memset (struct key*,int ,int) ;
 int puts (char*) ;

__attribute__((used)) static struct glyph *lookup_glyph(fz_font *font, float size, int gid, float *xp, float *yp)
{
 fz_matrix trm, subpix_trm;
 unsigned char subx, suby;
 fz_pixmap *pixmap;
 struct key key;
 unsigned int pos;
 int w, h;


 trm = fz_scale(size, -size);
 trm.e = *xp;
 trm.f = *yp;
 fz_subpixel_adjust(ctx, &trm, &subpix_trm, &subx, &suby);
 *xp = trm.e;
 *yp = trm.f;





 memset(&key, 0, sizeof key);
 key.font = font;
 key.size = size;
 key.gid = gid;
 key.subx = subx;
 key.suby = suby;

 pos = lookup_table(&key);
 if (g_table[pos].key.font)
  return &g_table[pos].glyph;





 glEnd();

 pixmap = fz_render_glyph_pixmap(ctx, font, gid, &subpix_trm, ((void*)0), 8);
 w = pixmap->w;
 h = pixmap->h;





 if (g_table_load == (MAXGLYPHS * 3) / 4)
 {
  puts("font cache table full, clearing cache");
  clear_font_cache();
  pos = lookup_table(&key);
 }

 if (h + PADDING > g_cache_h || w + PADDING > g_cache_w)
  return ((void*)0);

 if (g_cache_row_x + w + PADDING > g_cache_w)
 {
  g_cache_row_y += g_cache_row_h + PADDING;
  g_cache_row_x = PADDING;
  g_cache_row_h = 0;
 }
 if (g_cache_row_y + h + PADDING > g_cache_h)
 {
  puts("font cache texture full, clearing cache");
  clear_font_cache();
  pos = lookup_table(&key);
 }





 memcpy(&g_table[pos].key, &key, sizeof(struct key));
 g_table[pos].glyph.w = pixmap->w;
 g_table[pos].glyph.h = pixmap->h;
 g_table[pos].glyph.lsb = pixmap->x;
 g_table[pos].glyph.top = -pixmap->y;
 g_table[pos].glyph.s = g_cache_row_x;
 g_table[pos].glyph.t = g_cache_row_y;
 g_table_load ++;

 glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
 glPixelStorei(GL_UNPACK_ROW_LENGTH, pixmap->w);
 glTexSubImage2D(GL_TEXTURE_2D, 0, g_cache_row_x, g_cache_row_y, w, h,
   GL_ALPHA, GL_UNSIGNED_BYTE, pixmap->samples);
 glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);

 fz_drop_pixmap(ctx, pixmap);

 glBegin(GL_QUADS);

 g_cache_row_x += w + PADDING;
 if (g_cache_row_h < h + PADDING)
  g_cache_row_h = h + PADDING;

 return &g_table[pos].glyph;
}
