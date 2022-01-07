
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int plane_t ;
typedef int int32_t ;
typedef int int16_t ;


 int CHECK_PIX_OFS (int ,int ,int *) ;
 int DARKEN_PIXEL (int ,int ,int ,int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline void CHECK_N_DARKEN_PIXEL(int32_t i_x, int32_t i_y,
                                int16_t intensity, plane_t *ps_plane) {
    if ( likely( CHECK_PIX_OFS(i_x, i_y, ps_plane) ) )
        DARKEN_PIXEL(i_x, i_y, intensity, ps_plane);
}
