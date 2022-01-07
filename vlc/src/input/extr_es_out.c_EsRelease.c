
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmt; struct TYPE_4__* psz_language_code; struct TYPE_4__* psz_language; struct TYPE_4__* psz_title; int rc; } ;
typedef TYPE_1__ es_out_id_t ;


 int es_format_Clean (int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;

__attribute__((used)) static void EsRelease(es_out_id_t *es)
{
    if (vlc_atomic_rc_dec(&es->rc))
    {
        free(es->psz_title);
        free(es->psz_language);
        free(es->psz_language_code);
        es_format_Clean(&es->fmt);
        free(es);
    }
}
