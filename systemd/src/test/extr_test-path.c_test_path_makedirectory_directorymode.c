
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int Unit ;
typedef int Manager ;


 int F_OK ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 scalar_t__ access (char const*,int ) ;
 int assert_se (int) ;
 scalar_t__ manager_load_startable_unit_or_warn (int *,char*,int *,int **) ;
 int rm_rf (char const*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ unit_start (int *) ;
 scalar_t__ unit_stop (int *) ;

__attribute__((used)) static void test_path_makedirectory_directorymode(Manager *m) {
        const char *test_path = "/tmp/test-path_makedirectory/";
        Unit *unit = ((void*)0);
        struct stat s;

        assert_se(m);

        assert_se(access(test_path, F_OK) < 0);

        assert_se(manager_load_startable_unit_or_warn(m, "path-makedirectory.path", ((void*)0), &unit) >= 0);
        assert_se(unit_start(unit) >= 0);


        assert_se(access(test_path, F_OK) >= 0);


        assert_se(stat(test_path, &s) >= 0);
        assert_se((s.st_mode & S_IRWXU) == 0700);
        assert_se((s.st_mode & S_IRWXG) == 0040);
        assert_se((s.st_mode & S_IRWXO) == 0004);

        assert_se(unit_stop(unit) >= 0);
        (void) rm_rf(test_path, REMOVE_ROOT|REMOVE_PHYSICAL);
}
