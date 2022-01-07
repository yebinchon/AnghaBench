
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__* table; } ;
typedef TYPE_1__ dictht ;


 int printf (char*,...) ;

void showBuckets(dictht ht) {
    if (ht.table == ((void*)0)) {
        printf("NULL\n");
    } else {
        int j;
        for (j = 0; j < ht.size; j++) {
            printf("%c", ht.table[j] ? '1' : '0');
        }
        printf("\n");
    }
}
