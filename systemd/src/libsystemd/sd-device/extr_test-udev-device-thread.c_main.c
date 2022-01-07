
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;
typedef int pthread_t ;


 int assert_se (int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct udev_device**) ;
 scalar_t__ pthread_join (int ,int *) ;
 int thread ;
 int udev_device_get_properties_list_entry (struct udev_device*) ;
 struct udev_device* udev_device_new_from_syspath (int *,char*) ;
 scalar_t__ unsetenv (char*) ;

int main(int argc, char *argv[]) {
        struct udev_device *loopback;
        pthread_t t;

        assert_se(unsetenv("SYSTEMD_MEMPOOL") == 0);

        assert_se(loopback = udev_device_new_from_syspath(((void*)0), "/sys/class/net/lo"));

        assert_se(udev_device_get_properties_list_entry(loopback));

        assert_se(pthread_create(&t, ((void*)0), thread, &loopback) == 0);
        assert_se(pthread_join(t, ((void*)0)) == 0);

        assert_se(!loopback);

        return 0;
}
