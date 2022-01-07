
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ psz_spu_sources; int p_deinterlace_cfg; scalar_t__ psz_deinterlace; } ;
struct TYPE_5__ {TYPE_1__ video; scalar_t__ psz_filters; } ;
typedef TYPE_2__ sout_filters_config_t ;


 int config_ChainDestroy (int ) ;
 int free (scalar_t__) ;

__attribute__((used)) static inline
void sout_filters_config_clean( sout_filters_config_t *p_cfg )
{
    free( p_cfg->psz_filters );
    if( p_cfg->video.psz_deinterlace )
    {
        free( p_cfg->video.psz_deinterlace );
        config_ChainDestroy( p_cfg->video.p_deinterlace_cfg );
    }
    free( p_cfg->video.psz_spu_sources );
}
