
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ token_len; int cur_section; int error; int file; int token; } ;
typedef int WCHAR ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SECTION_NAME_TOO_LONG ;
 scalar_t__ MAX_SECTION_NAME_LEN ;
 int add_section (int ,int const*) ;
 int find_section (int ,int ) ;
 int * push_string (int ,int ) ;

__attribute__((used)) static int add_section_from_token( struct parser *parser )
{
    int section_index;

    if (parser->token_len > MAX_SECTION_NAME_LEN)
    {
        parser->error = ERROR_SECTION_NAME_TOO_LONG;
        return -1;
    }
    if ((section_index = find_section( parser->file, parser->token )) == -1)
    {

        const WCHAR *name = push_string( parser->file, parser->token );
        if ((section_index = add_section( parser->file, name )) == -1)
        {
            parser->error = ERROR_NOT_ENOUGH_MEMORY;
            return -1;
        }
    }
    parser->token_len = 0;
    parser->cur_section = section_index;
    return section_index;
}
