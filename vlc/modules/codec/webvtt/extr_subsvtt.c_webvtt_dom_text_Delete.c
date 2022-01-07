
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_text; } ;
typedef TYPE_1__ webvtt_dom_text_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void webvtt_dom_text_Delete( webvtt_dom_text_t *p_node )
{
    free( p_node->psz_text );
    free( p_node );
}
