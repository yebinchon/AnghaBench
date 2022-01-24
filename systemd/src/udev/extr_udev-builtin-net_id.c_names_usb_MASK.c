#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netnames {char* usb_ports; int /*<<< orphan*/  type; } ;
typedef  struct netnames sd_device ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  NET_USB ; 
 int /*<<< orphan*/  FUNC0 (struct netnames*) ; 
 int FUNC1 (struct netnames*,char*,char*,struct netnames**) ; 
 int FUNC2 (struct netnames*,char const**) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char**,int,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*) ; 

__attribute__((used)) static int FUNC7(sd_device *dev, struct netnames *names) {
        sd_device *usbdev;
        char name[256], *ports, *config, *interf, *s;
        const char *sysname;
        size_t l;
        int r;

        FUNC0(dev);
        FUNC0(names);

        r = FUNC1(dev, "usb", "usb_interface", &usbdev);
        if (r < 0)
                return r;

        r = FUNC2(usbdev, &sysname);
        if (r < 0)
                return r;

        /* get USB port number chain, configuration, interface */
        FUNC6(name, sizeof(name), sysname);
        s = FUNC3(name, '-');
        if (!s)
                return -EINVAL;
        ports = s+1;

        s = FUNC3(ports, ':');
        if (!s)
                return -EINVAL;
        s[0] = '\0';
        config = s+1;

        s = FUNC3(config, '.');
        if (!s)
                return -EINVAL;
        s[0] = '\0';
        interf = s+1;

        /* prefix every port number in the chain with "u" */
        s = ports;
        while ((s = FUNC3(s, '.')))
                s[0] = 'u';
        s = names->usb_ports;
        l = FUNC5(&s, sizeof(names->usb_ports), "u", ports, NULL);

        /* append USB config number, suppress the common config == 1 */
        if (!FUNC4(config, "1"))
                l = FUNC5(&s, sizeof(names->usb_ports), "c", config, NULL);

        /* append USB interface number, suppress the interface == 0 */
        if (!FUNC4(interf, "0"))
                l = FUNC5(&s, sizeof(names->usb_ports), "i", interf, NULL);
        if (l == 0)
                return -ENAMETOOLONG;

        names->type = NET_USB;
        return 0;
}