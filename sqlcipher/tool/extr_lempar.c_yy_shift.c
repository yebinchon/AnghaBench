
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int yy0; } ;
struct TYPE_9__ {TYPE_1__ minor; int major; scalar_t__ stateno; } ;
typedef TYPE_2__ yyStackEntry ;
struct TYPE_10__ {int yyhwm; size_t yystksz; TYPE_2__* yytos; TYPE_2__* yystack; TYPE_2__* yystackEnd; } ;
typedef TYPE_3__ yyParser ;
typedef int YYCODETYPE ;
typedef scalar_t__ YYACTIONTYPE ;
typedef int ParseTOKENTYPE ;


 scalar_t__ YY_MAX_SHIFT ;
 scalar_t__ YY_MIN_REDUCE ;
 scalar_t__ YY_MIN_SHIFTREDUCE ;
 int assert (int) ;
 scalar_t__ yyGrowStack (TYPE_3__*) ;
 int yyStackOverflow (TYPE_3__*) ;
 int yyTraceShift (TYPE_3__*,scalar_t__,char*) ;

__attribute__((used)) static void yy_shift(
  yyParser *yypParser,
  YYACTIONTYPE yyNewState,
  YYCODETYPE yyMajor,
  ParseTOKENTYPE yyMinor
){
  yyStackEntry *yytos;
  yypParser->yytos++;
  if( yypParser->yytos>=&yypParser->yystack[yypParser->yystksz] ){
    if( yyGrowStack(yypParser) ){
      yypParser->yytos--;
      yyStackOverflow(yypParser);
      return;
    }
  }

  if( yyNewState > YY_MAX_SHIFT ){
    yyNewState += YY_MIN_REDUCE - YY_MIN_SHIFTREDUCE;
  }
  yytos = yypParser->yytos;
  yytos->stateno = yyNewState;
  yytos->major = yyMajor;
  yytos->minor.yy0 = yyMinor;
  yyTraceShift(yypParser, yyNewState, "Shift");
}
