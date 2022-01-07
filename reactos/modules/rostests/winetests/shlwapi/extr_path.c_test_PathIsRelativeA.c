
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expect; int path; } ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ok (int,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ pPathIsRelativeA (int ) ;
 TYPE_1__* test_path_is_relative ;
 int win_skip (char*) ;

__attribute__((used)) static void test_PathIsRelativeA(void)
{
    BOOL ret;
    int i, num;

    if (!pPathIsRelativeA) {
        win_skip("PathIsRelativeA not available\n");
        return;
    }

    num = ARRAY_SIZE(test_path_is_relative);
    for (i = 0; i < num; i++) {
        ret = pPathIsRelativeA(test_path_is_relative[i].path);
        ok(ret == test_path_is_relative[i].expect,
          "PathIsRelativeA(\"%s\") expects %d, got %d.\n",
          test_path_is_relative[i].path, test_path_is_relative[i].expect, ret);
    }
}
