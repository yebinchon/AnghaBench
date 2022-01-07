
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_pixels; } ;
typedef TYPE_1__ plane_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ADD_MAX (int ,int ,int) ;
 size_t PIX_OFS (int ,int ,TYPE_1__*) ;

__attribute__((used)) static inline void LIGHTEN_PIXEL(int32_t i_x, int32_t i_y,
                                int16_t intensity, plane_t *ps_plane) {
    ADD_MAX( ps_plane->p_pixels[ PIX_OFS(i_x, i_y, ps_plane) ],
        intensity, 0xFF );
}
