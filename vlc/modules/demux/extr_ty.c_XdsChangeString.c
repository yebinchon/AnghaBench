
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_meta_changed; } ;
typedef TYPE_1__ xds_t ;


 int free (char*) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static bool XdsChangeString( xds_t *h, char **ppsz_dst, const char *psz_new )
{
    if( *ppsz_dst && psz_new && !strcmp( *ppsz_dst, psz_new ) )
        return 0;
    if( *ppsz_dst == ((void*)0) && psz_new == ((void*)0) )
        return 0;

    free( *ppsz_dst );
    if( psz_new )
        *ppsz_dst = strdup( psz_new );
    else
        *ppsz_dst = ((void*)0);

    h->b_meta_changed = 1;
    return 1;
}
