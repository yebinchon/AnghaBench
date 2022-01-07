
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_vector_exp_growth () ;
 int test_vector_foreach () ;
 int test_vector_grow () ;
 int test_vector_index_of () ;
 int test_vector_insert_array () ;
 int test_vector_insert_remove () ;
 int test_vector_move () ;
 int test_vector_move_slice_backward () ;
 int test_vector_move_slice_forward () ;
 int test_vector_push_array () ;
 int test_vector_remove_slice () ;
 int test_vector_reserve () ;
 int test_vector_shrink_to_fit () ;
 int test_vector_swap_remove () ;

int main(void) {
    test_vector_insert_remove();
    test_vector_push_array();
    test_vector_insert_array();
    test_vector_remove_slice();
    test_vector_swap_remove();
    test_vector_move();
    test_vector_move_slice_forward();
    test_vector_move_slice_backward();
    test_vector_index_of();
    test_vector_foreach();
    test_vector_grow();
    test_vector_exp_growth();
    test_vector_reserve();
    test_vector_shrink_to_fit();
    return 0;
}
