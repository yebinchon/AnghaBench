
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int i_es; int lock; TYPE_2__** es; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_13__ {scalar_t__ i_id; } ;
typedef TYPE_2__ es_format_t ;


 int TAB_APPEND (int,TYPE_2__**,TYPE_2__*) ;
 int es_format_Clean (TYPE_2__*) ;
 int es_format_Copy (TYPE_2__*,TYPE_2__ const*) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_item_UpdateTracksInfo(input_item_t *item, const es_format_t *fmt)
{
    int i;
    es_format_t *fmt_copy = malloc(sizeof *fmt_copy);
    if (!fmt_copy)
        return;

    es_format_Copy(fmt_copy, fmt);

    vlc_mutex_lock( &item->lock );

    for( i = 0; i < item->i_es; i++ )
    {
        if (item->es[i]->i_id != fmt->i_id)
            continue;


        es_format_Clean(item->es[i]);
        free(item->es[i]);
        item->es[i] = fmt_copy;
        vlc_mutex_unlock( &item->lock );
        return;
    }


    TAB_APPEND(item->i_es, item->es, fmt_copy);
    vlc_mutex_unlock( &item->lock );
}
