
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Job ;


 int job_compare_id ;
 int typesafe_qsort (int **,size_t,int ) ;

__attribute__((used)) static size_t sort_job_list(Job **list, size_t n) {
        Job *previous = ((void*)0);
        size_t a, b;


        typesafe_qsort(list, n, job_compare_id);


        for (a = 0, b = 0; a < n; a++) {

                if (previous == list[a])
                        continue;

                previous = list[b++] = list[a];
        }

        return b;
}
