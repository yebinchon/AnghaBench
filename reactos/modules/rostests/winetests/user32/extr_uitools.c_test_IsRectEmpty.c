
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtest ;
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef int RECT ;
typedef scalar_t__ BOOL ;



 scalar_t__ IsRectEmpty (int *) ;



 int ok (int,char*,unsigned int,char*,int ) ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static void test_IsRectEmpty(void)
{
    BOOL ret;
    unsigned int i;
    static const struct {
        RECT rect;
        BOOL ret;
    } rtest[] = {
        {{0, 0, 0, 0}, 128},
        {{127, 131, 127, 131}, 128},
        {{130, 130, 130, 130}, 128},
        {{-1, -1, -1, -1}, 128},
        {{-2011, -2017, -2011, -2017}, 128},
        {{129, 129, 129, 129}, 128},

        {{31, 37, 31, 41}, 128},
        {{881, 883, 887, 883}, 128},
        {{-1721, 1723, -1721, 7213}, 128},

        {{11, 13, 5, 7}, 128},
        {{-11, -13, -19, -23}, 128},
        {{11, 13, -17, 19}, 128},
        {{11, 13, 17, 11}, 128},

        {{101, 103, 107, 109}, 131},
        {{1, -9, 7, 3}, 131},
        {{-109, -107, -103, -101}, 131},
    };

    for (i = 0; i < sizeof(rtest)/sizeof(rtest[0]); i++) {
        ret = IsRectEmpty(&rtest[i].rect);
        ok(ret == rtest[i].ret, "Test %d: IsRectEmpty returned %s for %s\n", i,
           ret ? "TRUE" : "FALSE", wine_dbgstr_rect(&rtest[i].rect));
    }
}
