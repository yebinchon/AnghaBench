
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int webvtt_cue_settings_t ;


 int free (char*) ;
 char* strchr (char*,char) ;
 char* strndup (char*,int) ;
 char* strtok_r (char*,char*,char**) ;
 int webvtt_cue_settings_ParseTuple (int *,char*,char const*) ;

__attribute__((used)) static void webvtt_cue_settings_Parse( webvtt_cue_settings_t *p_settings,
                                       char *p_str )
{
    char *p_save;
    char *psz_tuple;
    do
    {
        psz_tuple = strtok_r( p_str, " ", &p_save );
        p_str = ((void*)0);
        if( psz_tuple )
        {
            const char *psz_split = strchr( psz_tuple, ':' );
            if( psz_split && psz_split[1] != 0 && psz_split != psz_tuple )
            {
                char *psz_key = strndup( psz_tuple, psz_split - psz_tuple );
                if( psz_key )
                {
                    webvtt_cue_settings_ParseTuple( p_settings, psz_key, psz_split + 1 );
                    free( psz_key );
                }
            }
        }
    } while( psz_tuple );
}
