
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_fovy; int f_fovx; int f_sar; } ;
typedef TYPE_1__ vout_display_opengl_t ;


 int atanf (int) ;
 int tanf (int) ;

__attribute__((used)) static void UpdateFOVy(vout_display_opengl_t *vgl)
{
    vgl->f_fovy = 2 * atanf(tanf(vgl->f_fovx / 2) / vgl->f_sar);
}
