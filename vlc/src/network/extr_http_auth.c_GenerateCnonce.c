
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_s {int dummy; } ;
typedef int ps_random ;


 int AddMD5 (struct md5_s*,char*,int) ;
 int EndMD5 (struct md5_s*) ;
 int InitMD5 (struct md5_s*) ;
 char* psz_md5_hash (struct md5_s*) ;
 int vlc_rand_bytes (char*,int) ;

__attribute__((used)) static char *GenerateCnonce()
{
    char ps_random[32];
    struct md5_s md5;

    vlc_rand_bytes( ps_random, sizeof( ps_random ) );

    InitMD5( &md5 );
    AddMD5( &md5, ps_random, sizeof( ps_random ) );
    EndMD5( &md5 );

    return psz_md5_hash( &md5 );
}
