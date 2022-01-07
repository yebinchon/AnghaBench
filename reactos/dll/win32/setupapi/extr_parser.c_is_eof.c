
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ const* end; } ;
typedef scalar_t__ WCHAR ;
typedef int BOOL ;


 scalar_t__ const CONTROL_Z ;

__attribute__((used)) static inline BOOL is_eof( const struct parser *parser, const WCHAR *ptr )
{
    return (ptr >= parser->end || *ptr == CONTROL_Z);
}
