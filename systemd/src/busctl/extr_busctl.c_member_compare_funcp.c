
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Member ;


 int member_compare_func (int * const,int * const) ;

__attribute__((used)) static int member_compare_funcp(Member * const *a, Member * const *b) {
        return member_compare_func(*a, *b);
}
