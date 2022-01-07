
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int todo; int expecturl; int expectret; int flags; int url2; int url1; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* TEST_COMBINE ;
 int test_url_combine (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void test_UrlCombine(void)
{
    unsigned int i;
    for (i = 0; i < ARRAY_SIZE(TEST_COMBINE); i++) {
        test_url_combine(TEST_COMBINE[i].url1, TEST_COMBINE[i].url2, TEST_COMBINE[i].flags,
                         TEST_COMBINE[i].expectret, TEST_COMBINE[i].expecturl, TEST_COMBINE[i].todo);
    }
}
