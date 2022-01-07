
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct vf_priv_s {int* buf; int thresh; int (* filter_line ) (int *,int *,int*,int,int,int ) ;int (* blur_line ) (int*,int*,int*,int *,int,int) ;} ;


 int * dither ;
 int memset (int*,int ,int) ;
 int stub1 (int*,int*,int*,int *,int,int) ;
 int stub2 (int*,int*,int*,int *,int,int) ;
 int stub3 (int *,int *,int*,int,int,int ) ;
 int stub4 (int *,int *,int*,int,int,int ) ;
 int stub5 (int *,int *,int*,int,int,int ) ;

__attribute__((used)) static void filter_plane(struct vf_priv_s *ctx, uint8_t *dst, uint8_t *src,
                         int width, int height, int dstride, int sstride, int r)
{
    int bstride = ((width+15)&~15)/2;
    int y;
    uint32_t dc_factor = (1<<21)/(r*r);
    uint16_t *dc = ctx->buf+16;
    uint16_t *buf = ctx->buf+bstride+32;
    int thresh = ctx->thresh;

    memset(dc, 0, (bstride+16)*sizeof(*buf));
    for (y=0; y<r; y++)
        ctx->blur_line(dc, buf+y*bstride, buf+(y-1)*bstride, src+2*y*sstride, sstride, width/2);
    for (;;) {
        if (y < height-r) {
            int mod = ((y+r)/2)%r;
            uint16_t *buf0 = buf+mod*bstride;
            uint16_t *buf1 = buf+(mod?mod-1:r-1)*bstride;
            int x, v;
            ctx->blur_line(dc, buf0, buf1, src+(y+r)*sstride, sstride, width/2);
            for (x=v=0; x<r; x++)
                v += dc[x];
            for (; x<width/2; x++) {
                v += dc[x] - dc[x-r];
                dc[x-r] = v * dc_factor >> 16;
            }
            for (; x<(width+r+1)/2; x++)
                dc[x-r] = v * dc_factor >> 16;
            for (x=-r/2; x<0; x++)
                dc[x] = dc[0];
        }
        if (y == r) {
            for (y=0; y<r; y++)
                ctx->filter_line(dst+y*dstride, src+y*sstride, dc-r/2, width, thresh, dither[y&7]);
        }
        ctx->filter_line(dst+y*dstride, src+y*sstride, dc-r/2, width, thresh, dither[y&7]);
        if (++y >= height) break;
        ctx->filter_line(dst+y*dstride, src+y*sstride, dc-r/2, width, thresh, dither[y&7]);
        if (++y >= height) break;
    }
}
