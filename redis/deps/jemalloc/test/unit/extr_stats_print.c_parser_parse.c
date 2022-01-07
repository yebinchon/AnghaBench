
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int token_type; } ;
struct TYPE_6__ {TYPE_2__ token; } ;
typedef TYPE_1__ parser_t ;



 int not_reached () ;
 scalar_t__ parser_parse_value (TYPE_1__*) ;
 scalar_t__ parser_tokenize (TYPE_1__*) ;
 int token_error (TYPE_2__*) ;

__attribute__((used)) static bool
parser_parse(parser_t *parser) {
 if (parser_tokenize(parser)) {
  goto label_error;
 }
 if (parser_parse_value(parser)) {
  goto label_error;
 }

 if (parser_tokenize(parser)) {
  goto label_error;
 }
 switch (parser->token.token_type) {
 case 128:
  return 0;
 default:
  goto label_error;
 }
 not_reached();

label_error:
 token_error(&parser->token);
 return 1;
}
