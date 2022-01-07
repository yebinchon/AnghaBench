
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int token_type_t ;
struct TYPE_3__ {size_t pos; size_t len; size_t line; size_t col; int token_type; int * parser; } ;
typedef TYPE_1__ token_t ;
typedef int parser_t ;



__attribute__((used)) static void
token_init(token_t *token, parser_t *parser, token_type_t token_type,
    size_t pos, size_t len, size_t line, size_t col) {
 token->parser = parser;
 token->token_type = token_type;
 token->pos = pos;
 token->len = len;
 token->line = line;
 token->col = col;
}
