
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int psz_escaped; scalar_t__ psz_string; } ;


 int assert (int) ;
 char* config_StringEscape (scalar_t__) ;
 TYPE_1__* escape_samples ;
 int free (char*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void test_config_StringEscape()
{
    for( int i = 0; escape_samples[i].psz_string; i++ )
    {
        char *psz_tmp = config_StringEscape( escape_samples[i].psz_string );
        assert( !strcmp( psz_tmp, escape_samples[i].psz_escaped ) );
        free( psz_tmp );
    }
}
