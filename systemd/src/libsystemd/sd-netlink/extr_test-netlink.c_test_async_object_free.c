
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_async_object {int ifname; } ;


 int assert (struct test_async_object*) ;
 int free (int ) ;
 struct test_async_object* mfree (struct test_async_object*) ;

__attribute__((used)) static struct test_async_object *test_async_object_free(struct test_async_object *t) {
        assert(t);

        free(t->ifname);
        return mfree(t);
}
