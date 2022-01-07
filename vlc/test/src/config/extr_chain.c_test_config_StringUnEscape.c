
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ psz_string; int psz_escaped; } ;


 int assert (int) ;
 int config_StringUnescape (char*) ;
 TYPE_1__* escape_samples ;
 int free (char*) ;
 int strcmp (char*,scalar_t__) ;
 char* strdup (int ) ;

__attribute__((used)) static void test_config_StringUnEscape()
{
    for( int i = 0; escape_samples[i].psz_string; i++ )
    {
        char *psz_tmp = strdup( escape_samples[i].psz_escaped );
        config_StringUnescape( psz_tmp );
        assert( !strcmp( psz_tmp, escape_samples[i].psz_string ) );
        free( psz_tmp );
    }
}
