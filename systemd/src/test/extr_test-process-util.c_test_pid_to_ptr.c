
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT16_MAX ;
 int INT16_MIN ;
 int INT32_MAX ;
 int INT32_MIN ;
 int * PID_TO_PTR (int) ;
 int PTR_TO_PID (int *) ;
 int assert_se (int) ;

__attribute__((used)) static void test_pid_to_ptr(void) {

        assert_se(PTR_TO_PID(((void*)0)) == 0);
        assert_se(PID_TO_PTR(0) == ((void*)0));

        assert_se(PTR_TO_PID(PID_TO_PTR(1)) == 1);
        assert_se(PTR_TO_PID(PID_TO_PTR(2)) == 2);
        assert_se(PTR_TO_PID(PID_TO_PTR(-1)) == -1);
        assert_se(PTR_TO_PID(PID_TO_PTR(-2)) == -2);

        assert_se(PTR_TO_PID(PID_TO_PTR(INT16_MAX)) == INT16_MAX);
        assert_se(PTR_TO_PID(PID_TO_PTR(INT16_MIN)) == INT16_MIN);





}
