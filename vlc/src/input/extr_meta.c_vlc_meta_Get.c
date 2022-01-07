
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t vlc_meta_type_t ;
struct TYPE_3__ {char const** ppsz_meta; } ;
typedef TYPE_1__ vlc_meta_t ;



const char *vlc_meta_Get( const vlc_meta_t *p_meta, vlc_meta_type_t meta_type )
{
    return p_meta->ppsz_meta[meta_type];
}
