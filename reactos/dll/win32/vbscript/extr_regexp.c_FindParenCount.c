
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int flags; scalar_t__ parenCount; TYPE_1__* classCache; scalar_t__ classBitmapsMem; scalar_t__ treeDepth; scalar_t__ progLength; scalar_t__ classCount; int cpbegin; int cp; } ;
struct TYPE_5__ {int * start; } ;
typedef TYPE_2__ CompilerState ;


 int CLASS_CACHE_SIZE ;
 int JSREG_FIND_PAREN_COUNT ;
 int JSREG_FIND_PAREN_ERROR ;
 scalar_t__ OVERFLOW_VALUE ;
 int ParseRegExp (TYPE_2__*) ;

__attribute__((used)) static UINT
FindParenCount(CompilerState *state)
{
    CompilerState temp;
    int i;

    if (state->flags & JSREG_FIND_PAREN_COUNT)
        return OVERFLOW_VALUE;







    temp = *state;
    temp.flags |= JSREG_FIND_PAREN_COUNT;
    temp.cp = temp.cpbegin;
    temp.parenCount = 0;
    temp.classCount = 0;
    temp.progLength = 0;
    temp.treeDepth = 0;
    temp.classBitmapsMem = 0;
    for (i = 0; i < CLASS_CACHE_SIZE; i++)
        temp.classCache[i].start = ((void*)0);

    if (!ParseRegExp(&temp)) {
        state->flags |= JSREG_FIND_PAREN_ERROR;
        return OVERFLOW_VALUE;
    }
    return temp.parenCount;
}
