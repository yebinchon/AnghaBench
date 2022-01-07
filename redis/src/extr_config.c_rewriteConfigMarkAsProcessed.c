
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int rewritten; } ;
typedef int sds ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictAdd (int ,int ,int *) ;
 int sdsfree (int ) ;
 int sdsnew (char const*) ;

void rewriteConfigMarkAsProcessed(struct rewriteConfigState *state, const char *option) {
    sds opt = sdsnew(option);

    if (dictAdd(state->rewritten,opt,((void*)0)) != DICT_OK) sdsfree(opt);
}
