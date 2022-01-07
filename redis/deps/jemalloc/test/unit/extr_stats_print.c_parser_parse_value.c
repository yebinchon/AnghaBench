
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int token_type; } ;
struct TYPE_7__ {TYPE_1__ token; } ;
typedef TYPE_2__ parser_t ;
 int not_reached () ;
 int parser_parse_array (TYPE_2__*) ;
 int parser_parse_object (TYPE_2__*) ;

__attribute__((used)) static bool
parser_parse_value(parser_t *parser) {
 switch (parser->token.token_type) {
 case 131:
 case 134:
 case 128:
 case 129:
 case 130:
  return 0;
 case 133:
  return parser_parse_object(parser);
 case 132:
  return parser_parse_array(parser);
 default:
  return 1;
 }
 not_reached();
}
