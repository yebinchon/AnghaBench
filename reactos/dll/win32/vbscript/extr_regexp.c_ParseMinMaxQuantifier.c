
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_9__ {TYPE_1__ range; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct TYPE_10__ {char* cp; int progLength; TYPE_5__* result; } ;
typedef int INT ;
typedef TYPE_3__ CompilerState ;
typedef int BOOL ;


 scalar_t__ GetCompactIndexWidth (scalar_t__) ;
 scalar_t__ GetDecimalValue (char,int,int *,TYPE_3__*) ;
 scalar_t__ JS7_ISDEC (char) ;
 int JSMSG_MAX_TOO_BIG ;
 int JSMSG_MIN_TOO_BIG ;
 int JSMSG_OUT_OF_MEMORY ;
 int JSMSG_OUT_OF_ORDER ;
 TYPE_5__* NewRENode (TYPE_3__*,int ) ;
 scalar_t__ OVERFLOW_VALUE ;
 int REOP_QUANT ;

__attribute__((used)) static INT
ParseMinMaxQuantifier(CompilerState *state, BOOL ignoreValues)
{
    UINT min, max;
    WCHAR c;
    const WCHAR *errp = state->cp++;

    c = *state->cp;
    if (JS7_ISDEC(c)) {
        ++state->cp;
        min = GetDecimalValue(c, 0xFFFF, ((void*)0), state);
        c = *state->cp;

        if (!ignoreValues && min == OVERFLOW_VALUE)
            return JSMSG_MIN_TOO_BIG;

        if (c == ',') {
            c = *++state->cp;
            if (JS7_ISDEC(c)) {
                ++state->cp;
                max = GetDecimalValue(c, 0xFFFF, ((void*)0), state);
                c = *state->cp;
                if (!ignoreValues && max == OVERFLOW_VALUE)
                    return JSMSG_MAX_TOO_BIG;
                if (!ignoreValues && min > max)
                    return JSMSG_OUT_OF_ORDER;
            } else {
                max = (UINT)-1;
            }
        } else {
            max = min;
        }
        if (c == '}') {
            state->result = NewRENode(state, REOP_QUANT);
            if (!state->result)
                return JSMSG_OUT_OF_MEMORY;
            state->result->u.range.min = min;
            state->result->u.range.max = max;





            state->progLength += (1 + GetCompactIndexWidth(min)
                                  + GetCompactIndexWidth(max + 1)
                                  +3);
            return 0;
        }
    }

    state->cp = errp;
    return -1;
}
