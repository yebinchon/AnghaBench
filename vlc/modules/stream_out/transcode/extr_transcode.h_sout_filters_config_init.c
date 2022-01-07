
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_filters_config_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline
void sout_filters_config_init( sout_filters_config_t *p_cfg )
{
    memset( p_cfg, 0, sizeof(*p_cfg) );
}
