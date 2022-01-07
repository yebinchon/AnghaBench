
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substext_updater_region_t ;


 int SubpictureUpdaterSysRegionInit (int *) ;
 int * malloc (int) ;

__attribute__((used)) static inline substext_updater_region_t *SubpictureUpdaterSysRegionNew( )
{
    substext_updater_region_t *p_region = malloc(sizeof(*p_region));
    if(p_region)
        SubpictureUpdaterSysRegionInit(p_region);
    return p_region;
}
