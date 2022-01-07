
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** reads; } ;
typedef TYPE_1__ webvtt_text_parser_t ;


 int free (TYPE_1__*) ;

void webvtt_text_parser_Delete( webvtt_text_parser_t *p )
{
    for( int i=0; i<3; i++ )
        free( p->reads[i] );
    free( p );
}
