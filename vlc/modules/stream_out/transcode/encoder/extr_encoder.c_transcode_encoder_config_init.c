
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transcode_encoder_config_t ;


 int memset (int *,int ,int) ;

void transcode_encoder_config_init( transcode_encoder_config_t *p_cfg )
{
    memset( p_cfg, 0, sizeof(*p_cfg) );
}
