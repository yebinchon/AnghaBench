
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listNode ;
typedef int list ;


 int listDelNode (int *,int *) ;
 int * listFirst (int *) ;

void ldbFlushLog(list *log) {
    listNode *ln;

    while((ln = listFirst(log)) != ((void*)0))
        listDelNode(log,ln);
}
