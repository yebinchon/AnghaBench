
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {char const* end; } ;
typedef char WCHAR ;
typedef int BOOL ;


 char const CONTROL_Z ;

__attribute__((used)) static inline BOOL is_eol( const struct parser *parser, const WCHAR *ptr )
{
    return (ptr >= parser->end || *ptr == CONTROL_Z || *ptr == '\n');
}
