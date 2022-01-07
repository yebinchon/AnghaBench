
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_http_auth_t ;


 int memset (int *,int ,int) ;

void vlc_http_auth_Init( vlc_http_auth_t *p_auth )
{
    memset( p_auth, 0, sizeof( *p_auth ) );
}
