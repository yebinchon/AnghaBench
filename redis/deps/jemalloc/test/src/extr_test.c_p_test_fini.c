
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int malloc_printf (char*,int ,int ,int ) ;
 int reentrancy ;
 int reentrancy_t_str (int ) ;
 int * test_counts ;
 int test_name ;
 size_t test_status ;
 int test_status_string (size_t) ;

void
p_test_fini(void) {
 test_counts[test_status]++;
 malloc_printf("%s (%s): %s\n", test_name, reentrancy_t_str(reentrancy),
     test_status_string(test_status));
}
