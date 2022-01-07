
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_21__ {int flags; int progLength; int treeDepth; } ;
struct TYPE_17__ {int index; } ;
struct TYPE_16__ {int ch1; int ch2; } ;
struct TYPE_15__ {int chr; } ;
struct TYPE_18__ {TYPE_3__ ucclass; TYPE_6__* kid2; TYPE_2__ altprereq; TYPE_1__ flat; } ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_4__ u; struct TYPE_20__* kid; void* op; } ;
struct TYPE_19__ {int op; int errPos; } ;
typedef TYPE_5__ REOpData ;
typedef TYPE_6__ RENode ;
typedef int INT ;
typedef TYPE_7__ CompilerState ;
typedef int BOOL ;


 int FALSE ;
 int JSMSG_MISSING_PAREN ;
 int JSMSG_REGEXP_TOO_COMPLEX ;
 int JSREPORT_ERROR ;
 TYPE_6__* NewRENode (TYPE_7__*,int const) ;
 int REG_FOLD ;

 void* REOP_ALTPREREQ ;
 void* REOP_ALTPREREQ2 ;


 void* REOP_CLASS ;

 void* REOP_FLAT ;


 int ReportRegExpError (TYPE_7__*,int ,int ) ;
 int ReportRegExpErrorHelper (TYPE_7__*,int ,int ,int ) ;
 int TREE_DEPTH_MAX ;
 int TRUE ;

__attribute__((used)) static BOOL
ProcessOp(CompilerState *state, REOpData *opData, RENode **operandStack,
          INT operandSP)
{
    RENode *result;

    switch (opData->op) {
      case 133:
        result = NewRENode(state, 133);
        if (!result)
            return FALSE;
        result->kid = operandStack[operandSP - 2];
        result->u.kid2 = operandStack[operandSP - 1];
        operandStack[operandSP - 2] = result;

        if (state->treeDepth == TREE_DEPTH_MAX) {
            ReportRegExpError(state, JSREPORT_ERROR, JSMSG_REGEXP_TOO_COMPLEX);
            return FALSE;
        }
        ++state->treeDepth;





        if (((RENode *) result->kid)->op == REOP_FLAT &&
            ((RENode *) result->u.kid2)->op == REOP_FLAT &&
            (state->flags & REG_FOLD) == 0) {
            result->op = REOP_ALTPREREQ;
            result->u.altprereq.ch1 = ((RENode *) result->kid)->u.flat.chr;
            result->u.altprereq.ch2 = ((RENode *) result->u.kid2)->u.flat.chr;


            state->progLength += 13;
        }
        else
        if (((RENode *) result->kid)->op == REOP_CLASS &&
            ((RENode *) result->kid)->u.ucclass.index < 256 &&
            ((RENode *) result->u.kid2)->op == REOP_FLAT &&
            (state->flags & REG_FOLD) == 0) {
            result->op = REOP_ALTPREREQ2;
            result->u.altprereq.ch1 = ((RENode *) result->u.kid2)->u.flat.chr;
            result->u.altprereq.ch2 = ((RENode *) result->kid)->u.ucclass.index;


            state->progLength += 13;
        }
        else
        if (((RENode *) result->kid)->op == REOP_FLAT &&
            ((RENode *) result->u.kid2)->op == REOP_CLASS &&
            ((RENode *) result->u.kid2)->u.ucclass.index < 256 &&
            (state->flags & REG_FOLD) == 0) {
            result->op = REOP_ALTPREREQ2;
            result->u.altprereq.ch1 = ((RENode *) result->kid)->u.flat.chr;
            result->u.altprereq.ch2 =
                ((RENode *) result->u.kid2)->u.ucclass.index;


            state->progLength += 13;
        }
        else {

            state->progLength += 7;
        }
        break;

      case 130:
        result = operandStack[operandSP - 2];
        while (result->next)
            result = result->next;
        result->next = operandStack[operandSP - 1];
        break;

      case 132:
      case 131:
      case 128:
      case 129:

        ReportRegExpErrorHelper(state, JSREPORT_ERROR, JSMSG_MISSING_PAREN,
                                opData->errPos);
        return FALSE;

      default:;
    }
    return TRUE;
}
