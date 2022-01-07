
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expect; int path; } ;
typedef int LPWSTR ;
typedef int BOOL ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FreeWideString (int ) ;
 int GetWideString (int ) ;
 int ok (int,char*,int ,int ,int ) ;
 int pPathIsRelativeW (int ) ;
 TYPE_1__* test_path_is_relative ;
 int win_skip (char*) ;

__attribute__((used)) static void test_PathIsRelativeW(void)
{
    BOOL ret;
    int i, num;
    LPWSTR path;

    if (!pPathIsRelativeW) {
        win_skip("PathIsRelativeW not available\n");
        return;
    }

    num = ARRAY_SIZE(test_path_is_relative);
    for (i = 0; i < num; i++) {
        path = GetWideString(test_path_is_relative[i].path);

        ret = pPathIsRelativeW(path);
        ok(ret == test_path_is_relative[i].expect,
          "PathIsRelativeW(\"%s\") expects %d, got %d.\n",
          test_path_is_relative[i].path, test_path_is_relative[i].expect, ret);

        FreeWideString(path);
    }
}
