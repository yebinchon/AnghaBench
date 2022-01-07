
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_pixel_pitch; int i_pitch; } ;
typedef TYPE_1__ plane_t ;
typedef int int32_t ;



__attribute__((used)) static inline int32_t PIX_OFS(int32_t i_x, int32_t i_y, plane_t *ps_plane) {
    return i_x * ps_plane->i_pixel_pitch + i_y * ps_plane->i_pitch; }
