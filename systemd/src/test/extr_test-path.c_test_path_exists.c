
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int Manager ;


 int assert_se (int) ;
 int check_stop_unlink (int *,int *,char const*,int *) ;
 scalar_t__ manager_load_startable_unit_or_warn (int *,char*,int *,int **) ;
 scalar_t__ touch (char const*) ;
 scalar_t__ unit_start (int *) ;

__attribute__((used)) static void test_path_exists(Manager *m) {
        const char *test_path = "/tmp/test-path_exists";
        Unit *unit = ((void*)0);

        assert_se(m);

        assert_se(manager_load_startable_unit_or_warn(m, "path-exists.path", ((void*)0), &unit) >= 0);
        assert_se(unit_start(unit) >= 0);

        assert_se(touch(test_path) >= 0);

        check_stop_unlink(m, unit, test_path, ((void*)0));
}
