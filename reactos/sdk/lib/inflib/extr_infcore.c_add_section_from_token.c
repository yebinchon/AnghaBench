
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ token_len; int * cur_section; int error; int token; int file; } ;
typedef int * PVOID ;
typedef int * PINFCACHESECTION ;


 int INF_STATUS_NOT_ENOUGH_MEMORY ;
 int INF_STATUS_SECTION_NAME_TOO_LONG ;
 int * InfpAddSection (int ,int ) ;
 int * InfpFindSection (int ,int ) ;
 scalar_t__ MAX_SECTION_NAME_LEN ;

__attribute__((used)) static PVOID add_section_from_token( struct parser *parser )
{
  PINFCACHESECTION Section;

  if (parser->token_len > MAX_SECTION_NAME_LEN)
    {
      parser->error = INF_STATUS_SECTION_NAME_TOO_LONG;
      return ((void*)0);
    }

  Section = InfpFindSection(parser->file,
                            parser->token);
  if (Section == ((void*)0))
    {

      Section= InfpAddSection(parser->file,
                              parser->token);
      if (Section == ((void*)0))
        {
          parser->error = INF_STATUS_NOT_ENOUGH_MEMORY;
          return ((void*)0);
        }
    }

  parser->token_len = 0;
  parser->cur_section = Section;

  return (PVOID)Section;
}
