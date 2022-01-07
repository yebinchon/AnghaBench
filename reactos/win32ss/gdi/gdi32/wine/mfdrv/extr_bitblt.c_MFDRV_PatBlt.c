
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitblt_coords {int log_height; int log_width; int log_y; int log_x; } ;
typedef int PHYSDEV ;
typedef int DWORD ;
typedef int BOOL ;


 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int META_PATBLT ;
 int MFDRV_MetaParam6 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int TRUE ;

BOOL MFDRV_PatBlt( PHYSDEV dev, struct bitblt_coords *dst, DWORD rop )
{
    MFDRV_MetaParam6( dev, META_PATBLT, dst->log_x, dst->log_y, dst->log_width, dst->log_height,
                      HIWORD(rop), LOWORD(rop) );
    return TRUE;
}
