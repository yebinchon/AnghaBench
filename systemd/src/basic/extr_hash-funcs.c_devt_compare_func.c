
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int CMP (int const,int const) ;

int devt_compare_func(const dev_t *a, const dev_t *b) {
        return CMP(*a, *b);
}
