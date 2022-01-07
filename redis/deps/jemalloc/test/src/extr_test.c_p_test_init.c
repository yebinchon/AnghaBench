
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_count ;
 char const* test_name ;
 int test_status ;
 int test_status_pass ;

void
p_test_init(const char *name) {
 test_count++;
 test_status = test_status_pass;
 test_name = name;
}
