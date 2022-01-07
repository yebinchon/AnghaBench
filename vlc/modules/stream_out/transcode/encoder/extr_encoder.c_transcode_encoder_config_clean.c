
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_config_chain; int psz_lang; int psz_name; } ;
typedef TYPE_1__ transcode_encoder_config_t ;


 int config_ChainDestroy (int ) ;
 int free (int ) ;

void transcode_encoder_config_clean( transcode_encoder_config_t *p_cfg )
{
    free( p_cfg->psz_name );
    free( p_cfg->psz_lang );
    config_ChainDestroy( p_cfg->p_config_chain );
}
