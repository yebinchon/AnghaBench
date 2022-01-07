
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device_monitor ;
typedef int sd_device ;


 int assert_se (int) ;
 scalar_t__ sd_device_get_syspath (int *,char const**) ;
 int sd_device_monitor_get_event (int *) ;
 int sd_event_exit (int ,int) ;
 int streq (char const*,char const*) ;

__attribute__((used)) static int monitor_handler(sd_device_monitor *m, sd_device *d, void *userdata) {
        const char *s, *syspath = userdata;

        assert_se(sd_device_get_syspath(d, &s) >= 0);
        assert_se(streq(s, syspath));

        return sd_event_exit(sd_device_monitor_get_event(m), 100);
}
