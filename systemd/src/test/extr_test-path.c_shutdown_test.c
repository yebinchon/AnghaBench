
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int assert_se (int *) ;
 int manager_free (int *) ;

__attribute__((used)) static void shutdown_test(Manager *m) {
        assert_se(m);

        manager_free(m);
}
