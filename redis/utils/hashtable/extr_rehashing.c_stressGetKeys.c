
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictEntry ;
typedef int dict ;


 int dictGetSomeKeys (int *,int **,int) ;
 int dictSize (int *) ;
 int printf (char*,int,int,int) ;
 int qsort (int **,int,int,int ) ;
 int rand () ;
 int sortPointers ;
 int zfree (int **) ;
 int ** zmalloc (int) ;

void stressGetKeys(dict *d, int times, int *perfect_run, int *approx_run) {
    int j;

    dictEntry **des = zmalloc(sizeof(dictEntry*)*dictSize(d));
    for (j = 0; j < times; j++) {
        int requested = rand() % (dictSize(d)+1);
        int returned = dictGetSomeKeys(d, des, requested);
        int dup = 0;

        qsort(des,returned,sizeof(dictEntry*),sortPointers);
        if (returned > 1) {
            int i;
            for (i = 0; i < returned-1; i++) {
                if (des[i] == des[i+1]) dup++;
            }
        }

        if (requested == returned && dup == 0) {
            (*perfect_run)++;
        } else {
            (*approx_run)++;
            printf("Requested, returned, duplicated: %d %d %d\n",
                requested, returned, dup);
        }
    }
    zfree(des);
}
