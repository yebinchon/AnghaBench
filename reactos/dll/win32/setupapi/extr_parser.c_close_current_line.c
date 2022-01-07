
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {struct line* line; } ;
struct line {int nb_fields; int key_field; int first_field; } ;



__attribute__((used)) static void close_current_line( struct parser *parser )
{
    struct line *cur_line = parser->line;

    if (cur_line)
    {

        if (cur_line->nb_fields == 1 && cur_line->key_field == -1)
            cur_line->key_field = cur_line->first_field;
    }
    parser->line = ((void*)0);
}
