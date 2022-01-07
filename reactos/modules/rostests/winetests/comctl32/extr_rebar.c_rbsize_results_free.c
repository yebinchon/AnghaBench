
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* bands; struct TYPE_3__* cyRowHeights; } ;


 int heap_free (TYPE_1__*) ;
 TYPE_1__* rbsize_results ;
 int rbsize_results_num ;

__attribute__((used)) static void rbsize_results_free(void)
{
    int i;

    for (i = 0; i < rbsize_results_num; i++) {
        heap_free(rbsize_results[i].cyRowHeights);
        heap_free(rbsize_results[i].bands);
    }
    heap_free(rbsize_results);
    rbsize_results = ((void*)0);
}
