
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int CMP (int const,int const) ;

int pid_compare_func(const pid_t *a, const pid_t *b) {

        return CMP(*a, *b);
}
