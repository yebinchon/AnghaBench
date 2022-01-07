
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_bytes; } ;
struct TYPE_6__ {TYPE_1__ bgbitmap; int updt; } ;
typedef TYPE_2__ ttml_region_t ;


 int SubpictureUpdaterSysRegionClean (int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void ttml_region_Delete( ttml_region_t *p_region )
{
    SubpictureUpdaterSysRegionClean( &p_region->updt );
    free( p_region->bgbitmap.p_bytes );
    free( p_region );
}
