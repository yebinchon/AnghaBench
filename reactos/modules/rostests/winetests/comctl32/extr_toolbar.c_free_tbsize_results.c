
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prcButtons; } ;


 int heap_free (TYPE_1__*) ;
 TYPE_1__* tbsize_results ;
 int tbsize_results_num ;

__attribute__((used)) static void free_tbsize_results(void) {
    int i;

    for (i = 0; i < tbsize_results_num; i++)
        heap_free(tbsize_results[i].prcButtons);
    heap_free(tbsize_results);
    tbsize_results = ((void*)0);
}
