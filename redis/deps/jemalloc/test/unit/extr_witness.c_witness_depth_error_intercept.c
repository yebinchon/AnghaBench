
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int witness_rank_t ;
typedef int witness_list_t ;


 int saw_depth_error ;

__attribute__((used)) static void
witness_depth_error_intercept(const witness_list_t *witnesses,
    witness_rank_t rank_inclusive, unsigned depth) {
 saw_depth_error = 1;
}
