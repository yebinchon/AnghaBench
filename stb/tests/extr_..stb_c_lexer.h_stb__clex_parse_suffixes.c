
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ string_len; scalar_t__ string_storage_len; int * string; int * string_storage; } ;
typedef TYPE_1__ stb_lexer ;


 long CLEX_parse_error ;
 int stb__clex_token (TYPE_1__*,long,char*,char*) ;
 scalar_t__ stb__strchr (char const*,char) ;

__attribute__((used)) static int stb__clex_parse_suffixes(stb_lexer *lexer, long tokenid, char *start, char *cur, const char *suffixes)
{
   suffixes = suffixes;

   return stb__clex_token(lexer, tokenid, start, cur-1);
}
