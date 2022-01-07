
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int parse_pid (char*,int*) ;

__attribute__((used)) static void test_parse_pid(void) {
        int r;
        pid_t pid;

        r = parse_pid("100", &pid);
        assert_se(r == 0);
        assert_se(pid == 100);

        r = parse_pid("0x7FFFFFFF", &pid);
        assert_se(r == 0);
        assert_se(pid == 2147483647);

        pid = 65;
        r = parse_pid("0", &pid);
        assert_se(r == -ERANGE);
        assert_se(pid == 65);

        pid = 65;
        r = parse_pid("-100", &pid);
        assert_se(r == -ERANGE);
        assert_se(pid == 65);

        pid = 65;
        r = parse_pid("0xFFFFFFFFFFFFFFFFF", &pid);
        assert_se(r == -ERANGE);
        assert_se(pid == 65);

        r = parse_pid("junk", &pid);
        assert_se(r == -EINVAL);

        r = parse_pid("", &pid);
        assert_se(r == -EINVAL);
}
