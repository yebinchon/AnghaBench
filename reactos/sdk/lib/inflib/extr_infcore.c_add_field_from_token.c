
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int error; scalar_t__ token_len; int token; int * line; int * cur_section; } ;
struct field {int dummy; } ;
typedef struct field* PVOID ;


 int INF_STATUS_NOT_ENOUGH_MEMORY ;
 int INF_STATUS_WRONG_INF_STYLE ;
 struct field* InfpAddFieldToLine (int *,int ) ;
 struct field* InfpAddKeyToLine (int *,int ) ;
 int * InfpAddLine (int *) ;

__attribute__((used)) static struct field *add_field_from_token( struct parser *parser, int is_key )
{
  PVOID field;

  if (!parser->line)
    {
      if (parser->cur_section == ((void*)0))
        {
          parser->error = INF_STATUS_WRONG_INF_STYLE;
          return ((void*)0);
        }

      parser->line = InfpAddLine(parser->cur_section);
      if (parser->line == ((void*)0))
        goto error;
    }
  else
    {

    }

  if (is_key)
    {
      field = InfpAddKeyToLine(parser->line, parser->token);
    }
  else
    {
      field = InfpAddFieldToLine(parser->line, parser->token);
    }

  if (field != ((void*)0))
    {
      parser->token_len = 0;
      return field;
    }

error:
  parser->error = INF_STATUS_NOT_ENOUGH_MEMORY;
  return ((void*)0);
}
