
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {char const* end; } ;
typedef char WCHAR ;


 char const CONTROL_Z ;

__attribute__((used)) __inline static int is_eol( struct parser *parser, const WCHAR *ptr )
{
  return (ptr >= parser->end ||
          *ptr == CONTROL_Z ||
          *ptr == '\n' ||
          (*ptr == '\r' && *(ptr + 1) == '\n') ||
          *ptr == 0);
}
