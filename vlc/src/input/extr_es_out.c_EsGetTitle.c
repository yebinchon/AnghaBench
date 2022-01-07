
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* psz_description; } ;
struct TYPE_4__ {scalar_t__* i_pos; scalar_t__* psz_language; TYPE_2__ fmt; } ;
typedef TYPE_1__ es_out_id_t ;
typedef TYPE_2__ es_format_t ;


 scalar_t__* _ (char*) ;
 int asprintf (char**,char*,scalar_t__*,scalar_t__*,...) ;
 char* strdup (scalar_t__*) ;

__attribute__((used)) static char *EsGetTitle( es_out_id_t *es )
{
    const es_format_t *fmt = &es->fmt;
    char *title;


    if( fmt->psz_description && *fmt->psz_description )
    {
        if( es->psz_language && *es->psz_language )
        {
            if( asprintf( &title, "%s - [%s]", fmt->psz_description,
                          es->psz_language ) == -1 )
                title = ((void*)0);
        }
        else
            title = strdup( fmt->psz_description );
    }
    else
    {
        if( es->psz_language && *es->psz_language )
        {
            if( asprintf( &title, "%s %zu - [%s]", _("Track"),
                          es->i_pos, es->psz_language ) == -1 )
                title = ((void*)0);
        }
        else
        {
            if( asprintf( &title, "%s %zu", _("Track"), es->i_pos ) == -1 )
                title = ((void*)0);
        }
    }

    return title;
}
