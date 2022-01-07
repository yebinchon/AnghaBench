
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {char const* end; char const* start; } ;
typedef char WCHAR ;


 int is_eol (struct parser*,char const*) ;
 int pop_state (struct parser*) ;
 int push_token (struct parser*,char const*) ;

__attribute__((used)) static const WCHAR *quotes_state( struct parser *parser, const WCHAR *pos )
{
    const WCHAR *p;

    for (p = pos; !is_eol( parser, p ); p++)
    {
        if (*p == '"')
        {
            if (p+1 < parser->end && p[1] == '"')
            {
                push_token( parser, p + 1 );
                parser->start = p + 2;
                p++;
            }
            else
            {
                push_token( parser, p );
                parser->start = p + 1;
                pop_state( parser );
                return p + 1;
            }
        }
    }
    push_token( parser, p );
    pop_state( parser );
    return p;
}
