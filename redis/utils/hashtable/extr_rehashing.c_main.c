
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dict ;


 unsigned long MAX1 ;
 unsigned long MAX2 ;
 int dictAdd (int *,void*,int *) ;
 int * dictCreate (int *,int *) ;
 int dictDelete (int *,void*) ;
 int dictRelease (int *) ;
 int dictResize (int *) ;
 scalar_t__ dictSize (int *) ;
 int dictTypeTest ;
 int printf (char*,...) ;
 int show (int *) ;
 int srand (int ) ;
 int stressGetKeys (int *,int,int*,int*) ;
 int time (int *) ;

int main(void) {
    dict *d = dictCreate(&dictTypeTest,((void*)0));
    unsigned long i;
    srand(time(((void*)0)));

    for (i = 0; i < MAX1; i++) {
        dictAdd(d,(void*)i,((void*)0));
        show(d);
    }
    printf("Size: %d\n", (int)dictSize(d));

    for (i = 0; i < MAX1; i++) {
        dictDelete(d,(void*)i);
        dictResize(d);
        show(d);
    }
    dictRelease(d);

    d = dictCreate(&dictTypeTest,((void*)0));

    printf("Stress testing dictGetSomeKeys\n");
    int perfect_run = 0, approx_run = 0;

    for (i = 0; i < MAX2; i++) {
        dictAdd(d,(void*)i,((void*)0));
        stressGetKeys(d,100,&perfect_run,&approx_run);
    }

    for (i = 0; i < MAX2; i++) {
        dictDelete(d,(void*)i);
        dictResize(d);
        stressGetKeys(d,100,&perfect_run,&approx_run);
    }

    printf("dictGetSomeKey, %d perfect runs, %d approximated runs\n",
        perfect_run, approx_run);

    dictRelease(d);

    printf("TEST PASSED!\n");
    return 0;
}
