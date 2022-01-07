
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rewriteConfigState {int has_tail; int * lines; int option_to_line; } ;
typedef int sds ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ listNode ;
typedef int list ;


 char const* REDIS_CONFIG_REWRITE_SIGNATURE ;
 int dictDelete (int ,int ) ;
 int * dictFetchValue (int ,int ) ;
 int listDelNode (int *,TYPE_1__*) ;
 TYPE_1__* listFirst (int *) ;
 scalar_t__ listLength (int *) ;
 int rewriteConfigAppendLine (struct rewriteConfigState*,int ) ;
 int rewriteConfigMarkAsProcessed (struct rewriteConfigState*,char const*) ;
 int sdsfree (int ) ;
 int sdsnew (char const*) ;

void rewriteConfigRewriteLine(struct rewriteConfigState *state, const char *option, sds line, int force) {
    sds o = sdsnew(option);
    list *l = dictFetchValue(state->option_to_line,o);

    rewriteConfigMarkAsProcessed(state,option);

    if (!l && !force) {

        sdsfree(line);
        sdsfree(o);
        return;
    }

    if (l) {
        listNode *ln = listFirst(l);
        int linenum = (long) ln->value;



        listDelNode(l,ln);
        if (listLength(l) == 0) dictDelete(state->option_to_line,o);
        sdsfree(state->lines[linenum]);
        state->lines[linenum] = line;
    } else {

        if (!state->has_tail) {
            rewriteConfigAppendLine(state,
                sdsnew(REDIS_CONFIG_REWRITE_SIGNATURE));
            state->has_tail = 1;
        }
        rewriteConfigAppendLine(state,line);
    }
    sdsfree(o);
}
