
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* ctime (int*) ;
 int ok (int ,char*,char*) ;

__attribute__((used)) static void test_ctime(void)
{
    time_t badtime = -1;
    char* ret;
    ret = ctime(&badtime);
    ok(ret == ((void*)0), "expected ctime to return NULL, got %s\n", ret);
}
