
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;
typedef int bitmask_rel ;
typedef int bitmask_props ;
typedef int bitmask_key ;
typedef int bitmask_ev ;
typedef int bitmask_abs ;


 int ABS_MAX ;
 int EV_MAX ;
 int EV_REL ;
 int EV_SW ;
 int INPUT_PROP_MAX ;
 int KEY_MAX ;
 int NBITS (int ) ;
 int REL_HWHEEL ;
 int REL_MAX ;
 int REL_WHEEL ;
 int assert (int *) ;
 int extract_info (int *,char const*,int) ;
 int get_cap_mask (int *,char*,unsigned long*,int,int) ;
 scalar_t__ sd_device_get_devname (int *,char const**) ;
 scalar_t__ sd_device_get_parent_with_subsystem_devtype (int *,char*,int *,int **) ;
 scalar_t__ sd_device_get_sysattr_value (int *,char*,char const**) ;
 scalar_t__ sd_device_get_sysname (int *,char const**) ;
 scalar_t__ startswith (char const*,char*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 int test_key (int *,unsigned long*,unsigned long*,int) ;
 int test_pointers (int *,unsigned long*,unsigned long*,unsigned long*,unsigned long*,unsigned long*,int) ;
 int udev_builtin_add_property (int *,int,char*,char*) ;

__attribute__((used)) static int builtin_input_id(sd_device *dev, int argc, char *argv[], bool test) {
        sd_device *pdev;
        unsigned long bitmask_ev[NBITS(EV_MAX)];
        unsigned long bitmask_abs[NBITS(ABS_MAX)];
        unsigned long bitmask_key[NBITS(KEY_MAX)];
        unsigned long bitmask_rel[NBITS(REL_MAX)];
        unsigned long bitmask_props[NBITS(INPUT_PROP_MAX)];
        const char *sysname, *devnode;
        bool is_pointer;
        bool is_key;

        assert(dev);



        for (pdev = dev; pdev; ) {
                const char *s;

                if (sd_device_get_sysattr_value(pdev, "capabilities/ev", &s) >= 0)
                        break;

                if (sd_device_get_parent_with_subsystem_devtype(pdev, "input", ((void*)0), &pdev) >= 0)
                        continue;

                pdev = ((void*)0);
                break;
        }

        if (pdev) {


                udev_builtin_add_property(dev, test, "ID_INPUT", "1");
                get_cap_mask(pdev, "capabilities/ev", bitmask_ev, sizeof(bitmask_ev), test);
                get_cap_mask(pdev, "capabilities/abs", bitmask_abs, sizeof(bitmask_abs), test);
                get_cap_mask(pdev, "capabilities/rel", bitmask_rel, sizeof(bitmask_rel), test);
                get_cap_mask(pdev, "capabilities/key", bitmask_key, sizeof(bitmask_key), test);
                get_cap_mask(pdev, "properties", bitmask_props, sizeof(bitmask_props), test);
                is_pointer = test_pointers(dev, bitmask_ev, bitmask_abs,
                                           bitmask_key, bitmask_rel,
                                           bitmask_props, test);
                is_key = test_key(dev, bitmask_ev, bitmask_key, test);

                if (!is_pointer && !is_key && test_bit(EV_REL, bitmask_ev) &&
                    (test_bit(REL_WHEEL, bitmask_rel) || test_bit(REL_HWHEEL, bitmask_rel)))
                        udev_builtin_add_property(dev, test, "ID_INPUT_KEY", "1");
                if (test_bit(EV_SW, bitmask_ev))
                        udev_builtin_add_property(dev, test, "ID_INPUT_SWITCH", "1");

        }

        if (sd_device_get_devname(dev, &devnode) >= 0 &&
            sd_device_get_sysname(dev, &sysname) >= 0 &&
            startswith(sysname, "event"))
                extract_info(dev, devnode, test);

        return 0;
}
