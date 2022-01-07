
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ const* end; } ;
typedef scalar_t__ WCHAR ;


 scalar_t__ const CONTROL_Z ;

__attribute__((used)) __inline static int is_eof( struct parser *parser, const WCHAR *ptr )
{
  return (ptr >= parser->end || *ptr == CONTROL_Z || *ptr == 0);
}
