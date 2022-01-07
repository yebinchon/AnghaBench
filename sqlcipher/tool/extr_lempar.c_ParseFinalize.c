
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ yytos; scalar_t__ yystack; int yystk0; } ;
typedef TYPE_1__ yyParser ;


 int free (int *) ;
 int yy_pop_parser_stack (TYPE_1__*) ;

void ParseFinalize(void *p){
  yyParser *pParser = (yyParser*)p;
  while( pParser->yytos>pParser->yystack ) yy_pop_parser_stack(pParser);

  if( pParser->yystack!=&pParser->yystk0 ) free(pParser->yystack);

}
