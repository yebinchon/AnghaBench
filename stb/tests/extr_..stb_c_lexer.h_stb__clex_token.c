
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int token; char* where_firstchar; char* where_lastchar; char* parse_point; } ;
typedef TYPE_1__ stb_lexer ;



__attribute__((used)) static int stb__clex_token(stb_lexer *lexer, int token, char *start, char *end)
{
   lexer->token = token;
   lexer->where_firstchar = start;
   lexer->where_lastchar = end;
   lexer->parse_point = end+1;
   return 1;
}
