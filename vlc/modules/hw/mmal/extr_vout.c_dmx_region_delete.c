
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmx_region_t {int resource; int element; } ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int free (struct dmx_region_t*) ;
 int vc_dispmanx_element_remove (int ,int ) ;
 int vc_dispmanx_resource_delete (int ) ;

__attribute__((used)) static void dmx_region_delete(struct dmx_region_t *dmx_region,
                DISPMANX_UPDATE_HANDLE_T update)
{
    vc_dispmanx_element_remove(update, dmx_region->element);
    vc_dispmanx_resource_delete(dmx_region->resource);
    free(dmx_region);
}
