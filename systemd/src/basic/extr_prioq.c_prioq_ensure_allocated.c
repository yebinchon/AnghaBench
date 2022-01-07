
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compare_func_t ;
typedef int Prioq ;


 int ENOMEM ;
 int assert (int **) ;
 int * prioq_new (int ) ;

int prioq_ensure_allocated(Prioq **q, compare_func_t compare_func) {
        assert(q);

        if (*q)
                return 0;

        *q = prioq_new(compare_func);
        if (!*q)
                return -ENOMEM;

        return 0;
}
