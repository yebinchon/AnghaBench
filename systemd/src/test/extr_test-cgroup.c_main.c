
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int assert_se (int) ;
 scalar_t__ cg_attach (int ,char*,int ) ;
 scalar_t__ cg_create (int ,char*) ;
 scalar_t__ cg_create_and_attach (int ,char*,int ) ;
 scalar_t__ cg_get_path (int ,char*,int *,char**) ;
 scalar_t__ cg_is_empty (int ,char*) ;
 scalar_t__ cg_is_empty_recursive (int ,char*) ;
 scalar_t__ cg_kill_recursive (int ,char*,int ,int ,int *,int *,int *) ;
 scalar_t__ cg_migrate_recursive (int ,char*,int ,char*,int ) ;
 scalar_t__ cg_pid_get_path (int ,int ,char**) ;
 scalar_t__ cg_rmdir (int ,char*) ;
 scalar_t__ cg_split_spec (char*,char**,char**) ;
 int cg_trim (int ,char*,int) ;
 int free (char*) ;
 int getpid_cached () ;
 int path_equal (char*,char*) ;
 int streq (char*,char*) ;

int main(int argc, char *argv[]) {
        char *path;
        char *c, *p;

        assert_se(cg_create(SYSTEMD_CGROUP_CONTROLLER, "/test-a") == 0);
        assert_se(cg_create(SYSTEMD_CGROUP_CONTROLLER, "/test-a") == 0);
        assert_se(cg_create(SYSTEMD_CGROUP_CONTROLLER, "/test-b") == 0);
        assert_se(cg_create(SYSTEMD_CGROUP_CONTROLLER, "/test-b/test-c") == 0);
        assert_se(cg_create_and_attach(SYSTEMD_CGROUP_CONTROLLER, "/test-b", 0) == 0);

        assert_se(cg_pid_get_path(SYSTEMD_CGROUP_CONTROLLER, getpid_cached(), &path) == 0);
        assert_se(streq(path, "/test-b"));
        free(path);

        assert_se(cg_attach(SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0) == 0);

        assert_se(cg_pid_get_path(SYSTEMD_CGROUP_CONTROLLER, getpid_cached(), &path) == 0);
        assert_se(path_equal(path, "/test-a"));
        free(path);

        assert_se(cg_create_and_attach(SYSTEMD_CGROUP_CONTROLLER, "/test-b/test-d", 0) == 0);

        assert_se(cg_pid_get_path(SYSTEMD_CGROUP_CONTROLLER, getpid_cached(), &path) == 0);
        assert_se(path_equal(path, "/test-b/test-d"));
        free(path);

        assert_se(cg_get_path(SYSTEMD_CGROUP_CONTROLLER, "/test-b/test-d", ((void*)0), &path) == 0);
        assert_se(path_equal(path, "/sys/fs/cgroup/systemd/test-b/test-d"));
        free(path);

        assert_se(cg_is_empty(SYSTEMD_CGROUP_CONTROLLER, "/test-a") > 0);
        assert_se(cg_is_empty(SYSTEMD_CGROUP_CONTROLLER, "/test-b") > 0);
        assert_se(cg_is_empty_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-a") > 0);
        assert_se(cg_is_empty_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-b") == 0);

        assert_se(cg_kill_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0, 0, ((void*)0), ((void*)0), ((void*)0)) == 0);
        assert_se(cg_kill_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-b", 0, 0, ((void*)0), ((void*)0), ((void*)0)) > 0);

        assert_se(cg_migrate_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-b", SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0) > 0);

        assert_se(cg_is_empty_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-a") == 0);
        assert_se(cg_is_empty_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-b") > 0);

        assert_se(cg_kill_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-a", 0, 0, ((void*)0), ((void*)0), ((void*)0)) > 0);
        assert_se(cg_kill_recursive(SYSTEMD_CGROUP_CONTROLLER, "/test-b", 0, 0, ((void*)0), ((void*)0), ((void*)0)) == 0);

        cg_trim(SYSTEMD_CGROUP_CONTROLLER, "/", 0);

        assert_se(cg_rmdir(SYSTEMD_CGROUP_CONTROLLER, "/test-b") < 0);
        assert_se(cg_rmdir(SYSTEMD_CGROUP_CONTROLLER, "/test-a") >= 0);

        assert_se(cg_split_spec("foobar:/", &c, &p) == 0);
        assert_se(streq(c, "foobar"));
        assert_se(streq(p, "/"));
        free(c);
        free(p);

        assert_se(cg_split_spec("foobar:", &c, &p) < 0);
        assert_se(cg_split_spec("foobar:asdfd", &c, &p) < 0);
        assert_se(cg_split_spec(":///", &c, &p) < 0);
        assert_se(cg_split_spec(":", &c, &p) < 0);
        assert_se(cg_split_spec("", &c, &p) < 0);
        assert_se(cg_split_spec("fo/obar:/", &c, &p) < 0);

        assert_se(cg_split_spec("/", &c, &p) >= 0);
        assert_se(c == ((void*)0));
        assert_se(streq(p, "/"));
        free(p);

        assert_se(cg_split_spec("foo", &c, &p) >= 0);
        assert_se(streq(c, "foo"));
        assert_se(p == ((void*)0));
        free(c);

        return 0;
}
