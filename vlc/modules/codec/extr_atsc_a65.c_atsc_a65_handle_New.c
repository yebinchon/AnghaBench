
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * iconv_u16be; int * psz_lang; } ;
typedef TYPE_1__ atsc_a65_handle_t ;


 TYPE_1__* malloc (int) ;
 int * strdup (char const*) ;
 int strlen (char const*) ;

atsc_a65_handle_t *atsc_a65_handle_New( const char *psz_lang )
{
    atsc_a65_handle_t *p_handle = malloc( sizeof(*p_handle) );
    if( p_handle )
    {
        if( psz_lang && strlen(psz_lang) > 2 )
            p_handle->psz_lang = strdup( psz_lang );
        else
            p_handle->psz_lang = ((void*)0);

        p_handle->iconv_u16be = ((void*)0);
    }
    return p_handle;
}
