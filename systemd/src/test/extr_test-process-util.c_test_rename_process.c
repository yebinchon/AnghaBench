
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int test_rename_process_multi () ;
 int test_rename_process_one (char*,int) ;

__attribute__((used)) static void test_rename_process(void) {
        test_rename_process_one(((void*)0), -EINVAL);
        test_rename_process_one("", -EINVAL);
        test_rename_process_one("foo", 1);
        test_rename_process_one("this is a really really long process name, followed by some more words", 0);
        test_rename_process_one("1234567", 1);
        test_rename_process_multi();
}
