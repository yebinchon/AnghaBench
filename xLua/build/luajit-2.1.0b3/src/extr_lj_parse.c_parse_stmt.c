
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int tok; int linenumber; } ;
typedef TYPE_1__ LexState ;
typedef int BCLine ;


 int LJ_52 ;


 int TK_end ;






 int TK_name ;



 int lex_match (TYPE_1__*,int ,int const,int ) ;
 int lj_lex_lookahead (TYPE_1__*) ;
 int lj_lex_next (TYPE_1__*) ;
 int parse_block (TYPE_1__*) ;
 int parse_break (TYPE_1__*) ;
 int parse_call_assign (TYPE_1__*) ;
 int parse_for (TYPE_1__*,int ) ;
 int parse_func (TYPE_1__*,int ) ;
 int parse_goto (TYPE_1__*) ;
 int parse_if (TYPE_1__*,int ) ;
 int parse_label (TYPE_1__*) ;
 int parse_local (TYPE_1__*) ;
 int parse_repeat (TYPE_1__*,int ) ;
 int parse_return (TYPE_1__*) ;
 int parse_while (TYPE_1__*,int ) ;

__attribute__((used)) static int parse_stmt(LexState *ls)
{
  BCLine line = ls->linenumber;
  switch (ls->tok) {
  case 133:
    parse_if(ls, line);
    break;
  case 128:
    parse_while(ls, line);
    break;
  case 137:
    lj_lex_next(ls);
    parse_block(ls);
    lex_match(ls, TK_end, 137, line);
    break;
  case 136:
    parse_for(ls, line);
    break;
  case 130:
    parse_repeat(ls, line);
    break;
  case 135:
    parse_func(ls, line);
    break;
  case 131:
    lj_lex_next(ls);
    parse_local(ls);
    break;
  case 129:
    parse_return(ls);
    return 1;
  case 138:
    lj_lex_next(ls);
    parse_break(ls);
    return !LJ_52;





  case 132:
    parse_label(ls);
    break;
  case 134:
    if (LJ_52 || lj_lex_lookahead(ls) == TK_name) {
      lj_lex_next(ls);
      parse_goto(ls);
      break;
    }
  default:
    parse_call_assign(ls);
    break;
  }
  return 0;
}
