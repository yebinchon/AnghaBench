
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;


 int EPERM ;
 int assert_se (int) ;
 int manager_load_config (int *) ;
 int manager_should_reload (int *) ;

__attribute__((used)) static int test_load_config(Manager *manager) {
        int r;







        r = manager_load_config(manager);
        if (r == -EPERM)
                return r;
        assert_se(r >= 0);

        assert_se(manager_should_reload(manager) == 0);

        return 0;
}
