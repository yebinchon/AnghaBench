
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BUS_ERROR_NO_SUCH_UNIT ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int assert_se (int) ;
 int sd_bus_error_add_map (int ) ;
 int sd_bus_error_set (int *,char*,int *) ;
 int test_errors3 ;
 int test_errors4 ;
 int test_errors_bad1 ;
 int test_errors_bad2 ;

__attribute__((used)) static void test_errno_mapping_custom(void) {
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error", ((void*)0)) == -5);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-2", ((void*)0)) == -52);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-x", ((void*)0)) == -EIO);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-33", ((void*)0)) == -333);

        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-88", ((void*)0)) == -EIO);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-99", ((void*)0)) == -EIO);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-77", ((void*)0)) == -EIO);

        assert_se(sd_bus_error_add_map(test_errors3) > 0);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-88", ((void*)0)) == -888);
        assert_se(sd_bus_error_add_map(test_errors4) > 0);
        assert_se(sd_bus_error_add_map(test_errors4) == 0);
        assert_se(sd_bus_error_add_map(test_errors3) == 0);

        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-99", ((void*)0)) == -999);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-77", ((void*)0)) == -777);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-78", ((void*)0)) == -778);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-2", ((void*)0)) == -52);
        assert_se(sd_bus_error_set(((void*)0), "org.freedesktop.custom-dbus-error-y", ((void*)0)) == -EIO);

        assert_se(sd_bus_error_set(((void*)0), BUS_ERROR_NO_SUCH_UNIT, ((void*)0)) == -ENOENT);

        assert_se(sd_bus_error_add_map(test_errors_bad1) == -EINVAL);
        assert_se(sd_bus_error_add_map(test_errors_bad2) == -EINVAL);
}
