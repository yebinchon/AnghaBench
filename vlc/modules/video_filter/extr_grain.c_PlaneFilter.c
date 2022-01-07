
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int i_visible_lines; int i_visible_pitch; int i_pitch; int * p_pixels; } ;
typedef TYPE_1__ plane_t ;
typedef int int16_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_9__ {int (* emms ) () ;int (* blend ) (int *,int,int const*,int,int const*) ;} ;
typedef TYPE_3__ filter_sys_t ;


 int BANK_SIZE ;
 int BLEND_SIZE ;
 int BlockBlend (int *,int,int const*,int,int const*,int ,int ) ;
 int __MIN (int,int) ;
 int stub1 (int *,int,int const*,int,int const*) ;
 int stub2 () ;
 int urand (int *) ;

__attribute__((used)) static void PlaneFilter(filter_t *filter,
                        plane_t *dst, const plane_t *src,
                        int16_t *bank, uint32_t *seed)
{
    filter_sys_t *sys = filter->p_sys;

    for (int y = 0; y < dst->i_visible_lines; y += BLEND_SIZE) {
        for (int x = 0; x < dst->i_visible_pitch; x += BLEND_SIZE) {
            int bx = urand(seed) % (BANK_SIZE - BLEND_SIZE + 1);
            int by = urand(seed) % (BANK_SIZE - BLEND_SIZE + 1);
            const int16_t *noise = &bank[by * BANK_SIZE + bx];

            int w = dst->i_visible_pitch - x;
            int h = dst->i_visible_lines - y;

            const uint8_t *srcp = &src->p_pixels[y * src->i_pitch + x];
            uint8_t *dstp = &dst->p_pixels[y * dst->i_pitch + x];

            if (w >= BLEND_SIZE && h >= BLEND_SIZE)
                sys->blend(dstp, dst->i_pitch, srcp, src->i_pitch, noise);
            else
                BlockBlend(dstp, dst->i_pitch, srcp, src->i_pitch, noise,
                           __MIN(w, BLEND_SIZE), __MIN(h, BLEND_SIZE));
        }
    }
    if (sys->emms)
        sys->emms();
}
