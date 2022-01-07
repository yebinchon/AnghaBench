
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int option_to_line; } ;
typedef int sds ;
typedef int list ;


 int dictAdd (int ,int ,int *) ;
 int * dictFetchValue (int ,int ) ;
 int listAddNodeTail (int *,void*) ;
 int * listCreate () ;
 int sdsdup (int ) ;

void rewriteConfigAddLineNumberToOption(struct rewriteConfigState *state, sds option, int linenum) {
    list *l = dictFetchValue(state->option_to_line,option);

    if (l == ((void*)0)) {
        l = listCreate();
        dictAdd(state->option_to_line,sdsdup(option),l);
    }
    listAddNodeTail(l,(void*)(long)linenum);
}
