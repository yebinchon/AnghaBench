
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rehashidx; int * ht; } ;
typedef TYPE_1__ dict ;


 int printf (char*) ;
 int showBuckets (int ) ;

void show(dict *d) {
    int j;
    if (d->rehashidx != -1) {
        printf("rhidx: ");
        for (j = 0; j < d->rehashidx; j++)
            printf(".");
        printf("|\n");
    }
    printf("ht[0]: ");
    showBuckets(d->ht[0]);
    printf("ht[1]: ");
    showBuckets(d->ht[1]);
    printf("\n");
}
