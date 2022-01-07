
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expect; int path; } ;
typedef scalar_t__ BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ PathIsURLA (int ) ;
 TYPE_1__* TEST_PATH_IS_URL ;
 int ok (int,char*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void test_PathIsUrl(void)
{
    size_t i;
    BOOL ret;

    for (i = 0; i < ARRAY_SIZE(TEST_PATH_IS_URL); i++) {
        ret = PathIsURLA(TEST_PATH_IS_URL[i].path);
        ok(ret == TEST_PATH_IS_URL[i].expect,
           "returned %d from path %s, expected %d\n", ret, TEST_PATH_IS_URL[i].path,
           TEST_PATH_IS_URL[i].expect);
    }
}
