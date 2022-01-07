
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ encoder_t ;
struct TYPE_6__ {int p_schro; } ;
typedef TYPE_2__ encoder_sys_t ;


 int msg_Err (TYPE_1__*,char*,char const*,char const*) ;
 int schro_encoder_setting_set_double (int ,char const*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static inline bool SchroSetEnum( encoder_t *p_enc, int i_list_size, const char *list[],
                  const char *psz_name, const char *psz_name_text, const char *psz_value)
{
    encoder_sys_t *p_sys = p_enc->p_sys;
    if( list && psz_name_text && psz_name && psz_value ) {
        for( int i = 0; i < i_list_size; ++i ) {
            if( strcmp( list[i], psz_value ) )
                continue;
            schro_encoder_setting_set_double( p_sys->p_schro, psz_name, i );
            return 1;
        }
        msg_Err( p_enc, "Invalid %s: %s", psz_name_text, psz_value );
    }
    return 0;
}
