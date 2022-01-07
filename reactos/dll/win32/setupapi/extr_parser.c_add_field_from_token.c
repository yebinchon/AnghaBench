
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int cur_section; int error; scalar_t__ token_len; TYPE_1__* line; int file; int token; } ;
struct field {int dummy; } ;
typedef int WCHAR ;
struct TYPE_2__ {int first_field; int key_field; int nb_fields; } ;
typedef int BOOL ;


 int ASSERT (int) ;
 int ERROR_EXPECTED_SECTION_NAME ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 struct field* add_field (int ,int *) ;
 TYPE_1__* add_line (int ,int) ;
 int * push_string (int ,int ) ;

__attribute__((used)) static struct field *add_field_from_token( struct parser *parser, BOOL is_key )
{
    struct field *field;
    WCHAR *text;

    if (!parser->line)
    {
        if (parser->cur_section == -1)
        {
            parser->error = ERROR_EXPECTED_SECTION_NAME;
            return ((void*)0);
        }
        if (!(parser->line = add_line( parser->file, parser->cur_section ))) goto error;
    }
    else ASSERT(!is_key);

    text = push_string( parser->file, parser->token );
    if ((field = add_field( parser->file, text )))
    {
        if (!is_key) parser->line->nb_fields++;
        else
        {

            parser->line->key_field = parser->line->first_field;
            parser->line->first_field++;
        }
        parser->token_len = 0;
        return field;
    }
 error:
    parser->error = ERROR_NOT_ENOUGH_MEMORY;
    return ((void*)0);
}
