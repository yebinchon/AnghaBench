
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_10__ {void* time; TYPE_3__* node; } ;
typedef TYPE_2__ clusterNodeFailReport ;
struct TYPE_11__ {int * fail_reports; } ;
typedef TYPE_3__ clusterNode ;


 int listAddNodeTail (int *,TYPE_2__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 void* mstime () ;
 TYPE_2__* zmalloc (int) ;

int clusterNodeAddFailureReport(clusterNode *failing, clusterNode *sender) {
    list *l = failing->fail_reports;
    listNode *ln;
    listIter li;
    clusterNodeFailReport *fr;



    listRewind(l,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        fr = ln->value;
        if (fr->node == sender) {
            fr->time = mstime();
            return 0;
        }
    }


    fr = zmalloc(sizeof(*fr));
    fr->node = sender;
    fr->time = mstime();
    listAddNodeTail(l,fr);
    return 1;
}
