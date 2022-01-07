
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {int type; int ccw_busid; } ;
typedef struct netnames sd_device ;


 int EINVAL ;
 int ENOENT ;
 int IN_SET (size_t,int,int) ;
 int NET_CCW ;
 int STR_IN_SET (char const*,char*,char*) ;
 int assert (struct netnames*) ;
 int sd_device_get_parent (struct netnames*,struct netnames**) ;
 int sd_device_get_subsystem (struct netnames*,char const**) ;
 int sd_device_get_sysname (struct netnames*,char const**) ;
 struct netnames* skip_virtio (struct netnames*) ;
 scalar_t__ snprintf_ok (int ,int,char*,char const*) ;
 size_t strlen (char const*) ;
 size_t strspn (char const*,char*) ;

__attribute__((used)) static int names_ccw(sd_device *dev, struct netnames *names) {
        sd_device *cdev;
        const char *bus_id, *subsys;
        size_t bus_id_len;
        size_t bus_id_start;
        int r;

        assert(dev);
        assert(names);


        r = sd_device_get_parent(dev, &cdev);
        if (r < 0)
                return r;


        cdev = skip_virtio(cdev);
        if (!cdev)
                return -ENOENT;

        r = sd_device_get_subsystem(cdev, &subsys);
        if (r < 0)
                return r;


        if (!STR_IN_SET(subsys, "ccwgroup", "ccw"))
                return -ENOENT;





        r = sd_device_get_sysname(cdev, &bus_id);
        if (r < 0)
                return r;




        bus_id_len = strlen(bus_id);
        if (!IN_SET(bus_id_len, 8, 9))
                return -EINVAL;






        bus_id_start = strspn(bus_id, ".0");
        bus_id += bus_id_start < bus_id_len ? bus_id_start : bus_id_len - 1;


        if (snprintf_ok(names->ccw_busid, sizeof(names->ccw_busid), "c%s", bus_id))
                names->type = NET_CCW;

        return 0;
}
