
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int i_chroma; } ;
struct TYPE_8__ {TYPE_2__* p; TYPE_1__ format; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_7__ {int i_pitch; int i_visible_pitch; int i_visible_lines; int * p_pixels; } ;


 int IS_YUV_10BITS (int ) ;
 int U10 ;
 int U8 ;
 int V10 ;
 int V8 ;
 int get_custom_pix_10b (int **,int **,int **,int **,int **,int **,int ,int ,int const*,int) ;
 int get_custom_pix_8b (int **,int **,int **,int **,int **,int **,int ,int ,int const*,int) ;

__attribute__((used)) static void
get_custom_from_yuv( picture_t *p_inpic, picture_t *p_outpic,
                     int const yp, int const up, int const vp, int const *m )
{
    int const i_in_pitch = p_inpic->p[yp].i_pitch;
    int const i_out_pitch = p_outpic->p[yp].i_pitch;
    int const i_visible_pitch = p_inpic->p[yp].i_visible_pitch;
    int const i_visible_lines = p_inpic->p[yp].i_visible_lines;
    int const i_uv_visible_pitch = p_inpic->p[up].i_visible_pitch;
    uint8_t *y_in[2] = { p_inpic->p[yp].p_pixels };
    uint8_t *u_in = p_inpic->p[up].p_pixels;
    uint8_t *v_in = p_inpic->p[vp].p_pixels;
    uint8_t *y_out[2] = { p_outpic->p[yp].p_pixels };
    uint8_t *u_out = p_outpic->p[up].p_pixels;
    uint8_t *v_out = p_outpic->p[vp].p_pixels;
    uint8_t *const y_end = y_in[0] + i_visible_lines * i_in_pitch;

    while (y_in[0] < y_end)
    {
        y_in[1] = y_in[0] + i_in_pitch;
        y_out[1] = y_out[0] + i_out_pitch;
        for (uint8_t *const y_row_end = y_in[0] + i_visible_pitch; y_in[0] < y_row_end; )
        {
            !IS_YUV_10BITS(p_inpic->format.i_chroma)
                ? get_custom_pix_8b(y_in, y_out, &u_in, &u_out, &v_in, &v_out, U8,
                                 V8, m, 255)
                : get_custom_pix_10b((uint16_t **)y_in, (uint16_t **)y_out,
                                  (uint16_t **)&u_in, (uint16_t **)&u_out,
                                  (uint16_t **)&v_in, (uint16_t **)&v_out, U10,
                                  V10, m, 1023);
        }
        y_in[0] += 2 * i_in_pitch - i_visible_pitch;
        y_out[0] += 2 * i_out_pitch - i_visible_pitch;
        u_in += p_inpic->p[up].i_pitch - i_uv_visible_pitch;
        u_out += p_outpic->p[up].i_pitch - i_uv_visible_pitch;
        v_in += p_inpic->p[vp].i_pitch - i_uv_visible_pitch;
        v_out += p_outpic->p[vp].i_pitch - i_uv_visible_pitch;
    }
}
