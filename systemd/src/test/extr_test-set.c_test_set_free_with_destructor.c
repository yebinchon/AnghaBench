
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Item {int seen; } ;
typedef int Set ;


 int ELEMENTSOF (struct Item*) ;
 int assert_se (int) ;
 int item_seen ;
 int * set_free_with_destructor (int *,int ) ;
 int * set_new (int *) ;
 int set_put (int *,struct Item*) ;

__attribute__((used)) static void test_set_free_with_destructor(void) {
        Set *m;
        struct Item items[4] = {};
        unsigned i;

        assert_se(m = set_new(((void*)0)));
        for (i = 0; i < ELEMENTSOF(items) - 1; i++)
                assert_se(set_put(m, items + i) == 1);

        m = set_free_with_destructor(m, item_seen);
        assert_se(items[0].seen == 1);
        assert_se(items[1].seen == 1);
        assert_se(items[2].seen == 1);
        assert_se(items[3].seen == 0);
}
