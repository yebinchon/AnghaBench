
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_PATH ;
 int DEFAULT_USER_PATH ;
 int log_info (char*,int ) ;

__attribute__((used)) static void test_print_paths(void) {
        log_info("DEFAULT_PATH=%s", DEFAULT_PATH);
        log_info("DEFAULT_USER_PATH=%s", DEFAULT_USER_PATH);
}
