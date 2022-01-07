
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Item {int seen; } ;
typedef int Set ;


 int ELEMENTSOF (struct Item*) ;
 int assert_se (int) ;
 int item_hash_ops ;
 int * set_free (int *) ;
 int * set_new (int *) ;
 int set_put (int *,struct Item*) ;

__attribute__((used)) static void test_set_free_with_hash_ops(void) {
        Set *m;
        struct Item items[4] = {};
        unsigned i;

        assert_se(m = set_new(&item_hash_ops));
        for (i = 0; i < ELEMENTSOF(items) - 1; i++)
                assert_se(set_put(m, items + i) == 1);

        m = set_free(m);
        assert_se(items[0].seen == 1);
        assert_se(items[1].seen == 1);
        assert_se(items[2].seen == 1);
        assert_se(items[3].seen == 0);
}
