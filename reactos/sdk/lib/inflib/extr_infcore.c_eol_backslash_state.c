
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int const* start; int line_pos; } ;
typedef int WCHAR ;


 int COMMENT ;
 int EOL_BACKSLASH ;
 int LEADING_SPACES ;
 int is_eof (struct parser*,int const*) ;
 int isspaceW (int const) ;
 int pop_state (struct parser*) ;
 int push_state (struct parser*,int ) ;
 int push_token (struct parser*,int const*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static const WCHAR *eol_backslash_state( struct parser *parser, const WCHAR *pos )
{
  const WCHAR *p;

  for (p = pos; !is_eof( parser, p ); p++)
    {
      switch(*p)
        {
          case '\r':
            continue;

          case '\n':
            parser->line_pos++;
            parser->start = p + 1;
            set_state( parser, LEADING_SPACES );
            return p + 1;

          case '\\':
            continue;

          case ';':
            push_state( parser, EOL_BACKSLASH );
            set_state( parser, COMMENT );
            return p + 1;

          default:
            if (isspaceW(*p))
              continue;
            push_token( parser, p );
            pop_state( parser );
            return p;
        }
    }
  parser->start = p;
  pop_state( parser );

  return p;
}
