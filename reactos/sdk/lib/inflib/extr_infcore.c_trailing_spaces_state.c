
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int dummy; } ;
typedef char WCHAR ;


 int EOL_BACKSLASH ;
 int is_eol (struct parser*,char const*) ;
 int isspaceW (char const) ;
 int pop_state (struct parser*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static const WCHAR *trailing_spaces_state( struct parser *parser, const WCHAR *pos )
{
  const WCHAR *p;

  for (p = pos; !is_eol( parser, p ); p++)
    {
      if (*p == '\\')
        {
          set_state( parser, EOL_BACKSLASH );
          return p;
        }
      if (!isspaceW(*p))
        break;
    }
  pop_state( parser );
  return p;
}
