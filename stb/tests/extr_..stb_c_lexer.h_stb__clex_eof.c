
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int token; } ;
typedef TYPE_1__ stb_lexer ;


 int CLEX_eof ;

__attribute__((used)) static int stb__clex_eof(stb_lexer *lexer)
{
   lexer->token = CLEX_eof;
   return 0;
}
