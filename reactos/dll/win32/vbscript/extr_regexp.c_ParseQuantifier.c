
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_13__ {int* cp; int* cpend; int progLength; scalar_t__ treeDepth; TYPE_3__* result; } ;
struct TYPE_10__ {int min; int max; void* greedy; } ;
struct TYPE_11__ {TYPE_1__ range; } ;
struct TYPE_12__ {TYPE_2__ u; struct TYPE_12__* kid; } ;
typedef TYPE_3__ RENode ;
typedef int INT ;
typedef TYPE_4__ CompilerState ;
typedef void* BOOL ;


 void* FALSE ;
 int JSMSG_REGEXP_TOO_COMPLEX ;
 int JSREPORT_ERROR ;
 void* NewRENode (TYPE_4__*,int ) ;
 int ParseMinMaxQuantifier (TYPE_4__*,void*) ;
 int REOP_QUANT ;
 int ReportRegExpError (TYPE_4__*,int ,int ) ;
 int ReportRegExpErrorHelper (TYPE_4__*,int ,int,int ) ;
 scalar_t__ TREE_DEPTH_MAX ;
 void* TRUE ;
 int errp ;

__attribute__((used)) static BOOL
ParseQuantifier(CompilerState *state)
{
    RENode *term;
    term = state->result;
    if (state->cp < state->cpend) {
        switch (*state->cp) {
          case '+':
            state->result = NewRENode(state, REOP_QUANT);
            if (!state->result)
                return FALSE;
            state->result->u.range.min = 1;
            state->result->u.range.max = (UINT)-1;

            state->progLength += 4;
            goto quantifier;
          case '*':
            state->result = NewRENode(state, REOP_QUANT);
            if (!state->result)
                return FALSE;
            state->result->u.range.min = 0;
            state->result->u.range.max = (UINT)-1;

            state->progLength += 4;
            goto quantifier;
          case '?':
            state->result = NewRENode(state, REOP_QUANT);
            if (!state->result)
                return FALSE;
            state->result->u.range.min = 0;
            state->result->u.range.max = 1;

            state->progLength += 4;
            goto quantifier;
          case '{':
          {
            INT err;

            err = ParseMinMaxQuantifier(state, FALSE);
            if (err == 0)
                goto quantifier;
            if (err == -1)
                return TRUE;

            ReportRegExpErrorHelper(state, JSREPORT_ERROR, err, errp);
            return FALSE;
          }
          default:;
        }
    }
    return TRUE;

quantifier:
    if (state->treeDepth == TREE_DEPTH_MAX) {
        ReportRegExpError(state, JSREPORT_ERROR, JSMSG_REGEXP_TOO_COMPLEX);
        return FALSE;
    }

    ++state->treeDepth;
    ++state->cp;
    state->result->kid = term;
    if (state->cp < state->cpend && *state->cp == '?') {
        ++state->cp;
        state->result->u.range.greedy = FALSE;
    } else {
        state->result->u.range.greedy = TRUE;
    }
    return TRUE;
}
