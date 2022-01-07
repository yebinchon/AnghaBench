
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md5_s {int dummy; } ;
struct TYPE_2__ {char* psz_md5; scalar_t__ psz_string; } ;


 int AddMD5 (struct md5_s*,scalar_t__,int ) ;
 int EndMD5 (struct md5_s*) ;
 int InitMD5 (struct md5_s*) ;
 int abort () ;
 int free (char*) ;
 TYPE_1__* md5_samples ;
 int printf (char*,char*,char*) ;
 char* psz_md5_hash (struct md5_s*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void test_config_StringEscape()
{
    for( int i = 0; md5_samples[i].psz_string; i++ )
    {
        struct md5_s md5;
        InitMD5( &md5 );
        AddMD5( &md5, md5_samples[i].psz_string, strlen( md5_samples[i].psz_string ) );
        EndMD5( &md5 );
        char * psz_hash = psz_md5_hash( &md5 );

        if( strcmp( psz_hash, md5_samples[i].psz_md5 ) )
        {
            printf( "Output: %s\nExpected: %s\n", psz_hash,
                    md5_samples[i].psz_md5 );
            abort();
        }
        free( psz_hash );
    }
}
