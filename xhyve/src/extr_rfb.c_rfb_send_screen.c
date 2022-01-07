
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rfb_softc {int sending; unsigned int crc_width; unsigned int crc_height; int* crc_tmp; int mtx; scalar_t__ hw_crc; int crc; } ;
struct bhyvegc_image {unsigned int width; unsigned int height; int* data; } ;
typedef long ssize_t ;
typedef int Bytef ;


 unsigned int PIXCELL_MASK ;
 unsigned int PIXCELL_SHIFT ;
 int PIX_PER_CELL ;
 unsigned int RFB_SEND_ALL_THRESH ;
 struct bhyvegc_image* console_get_image () ;
 int console_refresh () ;
 scalar_t__ crc32 (int,int *,unsigned int) ;
 int fast_crc32 (int*,size_t,int) ;
 scalar_t__ howmany (unsigned int,int) ;
 int memset (int*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 long rfb_send_all (struct rfb_softc*,int,struct bhyvegc_image*) ;
 long rfb_send_rect (struct rfb_softc*,int,struct bhyvegc_image*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static long
rfb_send_screen(struct rfb_softc *rc, int cfd, int all)
{
 struct bhyvegc_image *gc_image;
 ssize_t nwrite;
 unsigned int x, y;
 unsigned int celly, cellwidth;
 unsigned int xcells, ycells;
 unsigned int w, h;
 uint32_t *p;
 unsigned int rem_x, rem_y;
 long retval;
 uint32_t *crc_p, *orig_crc;
 unsigned int changes;

 console_refresh();
 gc_image = console_get_image();

 pthread_mutex_lock(&rc->mtx);
 if (rc->sending) {
  pthread_mutex_unlock(&rc->mtx);
  return (1);
 }
 rc->sending = 1;
 pthread_mutex_unlock(&rc->mtx);

 retval = 0;

 if (all) {
  retval = rfb_send_all(rc, cfd, gc_image);
  goto done;
 }
 rc->crc_width = gc_image->width;
 rc->crc_height = gc_image->height;

 w = rc->crc_width;
 h = rc->crc_height;
 xcells = (unsigned int)howmany(rc->crc_width, PIX_PER_CELL);
 ycells = (unsigned int)howmany(rc->crc_height, PIX_PER_CELL);

 rem_x = w & PIXCELL_MASK;

 rem_y = h & PIXCELL_MASK;
 if (!rem_y)
  rem_y = PIX_PER_CELL;

 p = gc_image->data;







 crc_p = rc->crc_tmp - xcells;
 orig_crc = rc->crc - xcells;
 changes = 0;
 memset(rc->crc_tmp, 0, sizeof(uint32_t) * xcells * ycells);
 for (y = 0; y < h; y++) {
  if ((y & PIXCELL_MASK) == 0) {
   crc_p += xcells;
   orig_crc += xcells;
  }

  for (x = 0; x < xcells; x++) {
   if (rc->hw_crc)
    crc_p[x] = fast_crc32(p,
                 PIX_PER_CELL * sizeof(uint32_t),
                 crc_p[x]);
   else
    crc_p[x] = (uint32_t)crc32(crc_p[x],
                 (Bytef *)p,
                 PIX_PER_CELL * sizeof(uint32_t));

   p += PIX_PER_CELL;


   if ((y & PIXCELL_MASK) == PIXCELL_MASK || y == (h-1)) {
    if (orig_crc[x] != crc_p[x]) {
     orig_crc[x] = crc_p[x];
     crc_p[x] = 1;
     changes++;
    } else {
     crc_p[x] = 0;
    }
   }
  }

  if (rem_x) {
   if (rc->hw_crc)
    crc_p[x] = fast_crc32(p,
                        (size_t)rem_x * sizeof(uint32_t),
                        crc_p[x]);
   else
    crc_p[x] = (uint32_t)crc32(crc_p[x],
                        (Bytef *)p,
                        rem_x * sizeof(uint32_t));
   p += rem_x;

   if ((y & PIXCELL_MASK) == PIXCELL_MASK || y == (h-1)) {
    if (orig_crc[x] != crc_p[x]) {
     orig_crc[x] = crc_p[x];
     crc_p[x] = 1;
     changes++;
    } else {
     crc_p[x] = 0;
    }
   }
  }
 }


 if (((changes * 100) / (xcells * ycells)) >= RFB_SEND_ALL_THRESH) {
  retval = rfb_send_all(rc, cfd, gc_image);
  goto done;
 }


 crc_p = rc->crc_tmp;
 for (y = 0; y < h; y += PIX_PER_CELL) {

  celly = (y >> PIXCELL_SHIFT);


  for (x = 0; x < xcells; x++) {
   if (*crc_p++ == 0)
    continue;

   if (x == (xcells - 1) && rem_x > 0)
    cellwidth = rem_x;
   else
    cellwidth = PIX_PER_CELL;
   nwrite = rfb_send_rect(rc, cfd,
    gc_image,
    x * PIX_PER_CELL,
    celly * PIX_PER_CELL,
           cellwidth,
    y + PIX_PER_CELL >= h ? rem_y : PIX_PER_CELL);
   if (nwrite <= 0) {
    retval = nwrite;
    goto done;
   }
  }
 }
 retval = 1;

done:
 pthread_mutex_lock(&rc->mtx);
 rc->sending = 0;
 pthread_mutex_unlock(&rc->mtx);

 return (retval);
}
