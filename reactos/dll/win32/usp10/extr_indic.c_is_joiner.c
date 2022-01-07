
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int lex_ZWJ ;
 int lex_ZWNJ ;

__attribute__((used)) static inline BOOL is_joiner( int type )
{
    return (type == lex_ZWJ || type == lex_ZWNJ);
}
