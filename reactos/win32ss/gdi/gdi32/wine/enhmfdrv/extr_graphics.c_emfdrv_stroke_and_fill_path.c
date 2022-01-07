
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gdi_path {int dummy; } ;
typedef int emr ;
struct TYPE_4__ {int nSize; int iType; } ;
struct TYPE_3__ {int rclBounds; TYPE_2__ emr; } ;
typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef TYPE_1__ EMRSTROKEANDFILLPATH ;
typedef int DC ;
typedef int BYTE ;
typedef int BOOL ;


 int EMFDRV_UpdateBBox (int ,int *) ;
 int EMFDRV_WriteRecord (int ,TYPE_2__*) ;
 int FALSE ;
 int TRUE ;
 int empty_bounds ;
 int free_gdi_path (struct gdi_path*) ;
 struct gdi_path* get_gdi_flat_path (int *,int *) ;
 int get_gdi_path_data (struct gdi_path*,int **,int **) ;
 int * get_physdev_dc (int ) ;
 int get_points_bounds (int *,int *,int,int ) ;

__attribute__((used)) static BOOL emfdrv_stroke_and_fill_path( PHYSDEV dev, INT type )
{
    DC *dc = get_physdev_dc( dev );
    EMRSTROKEANDFILLPATH emr;
    struct gdi_path *path;
    POINT *points;
    BYTE *flags;

    emr.emr.iType = type;
    emr.emr.nSize = sizeof(emr);

    if ((path = get_gdi_flat_path( dc, ((void*)0) )))
    {
        int count = get_gdi_path_data( path, &points, &flags );
        get_points_bounds( &emr.rclBounds, points, count, 0 );
        free_gdi_path( path );
    }
    else emr.rclBounds = empty_bounds;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    if (!path) return FALSE;
    EMFDRV_UpdateBBox( dev, &emr.rclBounds );
    return TRUE;
}
