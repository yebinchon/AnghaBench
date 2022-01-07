
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ min_ver; scalar_t__ max_ver; int line; int upper_limit; int tags; scalar_t__ base; } ;


 scalar_t__ WINVER_ANY ;
 TYPE_1__* data ;
 scalar_t__ g_WinVersion ;
 int test_tag (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void test_SdbTagToStringAllTags(void)
{
    int n;
    for (n = 0; data[n].base; ++n)
    {
        if ((data[n].min_ver == WINVER_ANY || g_WinVersion >= data[n].min_ver) &&
            (data[n].max_ver == WINVER_ANY || g_WinVersion <= data[n].max_ver))
        {
            test_tag(data[n].base, data[n].tags, data[n].upper_limit, data[n].line);
        }
    }
}
