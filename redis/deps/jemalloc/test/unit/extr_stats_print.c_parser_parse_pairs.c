
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int token_type; } ;
struct TYPE_7__ {TYPE_1__ token; } ;
typedef TYPE_2__ parser_t ;





 int assert_d_eq (int,int,char*) ;
 scalar_t__ parser_parse_pair (TYPE_2__*) ;
 scalar_t__ parser_tokenize (TYPE_2__*) ;

__attribute__((used)) static bool
parser_parse_pairs(parser_t *parser) {
 assert_d_eq(parser->token.token_type, 128,
     "Object should start with string");
 if (parser_parse_pair(parser)) {
  return 1;
 }

 while (1) {
  if (parser_tokenize(parser)) {
   return 1;
  }
  switch (parser->token.token_type) {
  case 130:
   if (parser_tokenize(parser)) {
    return 1;
   }
   switch (parser->token.token_type) {
   case 128:
    if (parser_parse_pair(parser)) {
     return 1;
    }
    break;
   default:
    return 1;
   }
   break;
  case 129:
   return 0;
  default:
   return 1;
  }
 }
}
