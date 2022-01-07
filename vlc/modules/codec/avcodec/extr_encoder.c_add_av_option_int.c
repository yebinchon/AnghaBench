
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int encoder_t ;
typedef int buff ;
typedef int AVDictionary ;


 scalar_t__ av_dict_set (int **,char const*,char*,int ) ;
 int msg_Warn (int *,char*,char const*) ;
 scalar_t__ snprintf (char*,int,char*,int) ;

__attribute__((used)) static void add_av_option_int( encoder_t *p_enc, AVDictionary** pp_dict, const char* psz_name, int i_value )
{
    char buff[32];
    if ( snprintf( buff, sizeof(buff), "%d", i_value ) < 0 )
        return;
    if( av_dict_set( pp_dict, psz_name, buff, 0 ) < 0 )
        msg_Warn( p_enc, "Failed to set encoder option %s", psz_name );
}
