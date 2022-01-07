
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_MAX (int ,int ) ;
 int CONST_MAX4 (int ,int ,int ,int ) ;
 int EVIOCGBIT (int ,int) ;
 int EV_KEY ;
 int EV_SW ;
 int EV_SYN ;
 int KEY_POWER ;
 int KEY_POWER2 ;
 int KEY_SLEEP ;
 int KEY_SUSPEND ;
 int SW_DOCK ;
 int SW_LID ;
 int ULONG_BITS ;
 int assert (int) ;
 scalar_t__ bitset_get (unsigned long*,int ) ;
 int errno ;
 scalar_t__ ioctl (int,int ,unsigned long*) ;

__attribute__((used)) static int button_suitable(int fd) {
        unsigned long types[CONST_MAX(EV_KEY, EV_SW)/ULONG_BITS+1];

        assert(fd >= 0);

        if (ioctl(fd, EVIOCGBIT(EV_SYN, sizeof types), types) < 0)
                return -errno;

        if (bitset_get(types, EV_KEY)) {
                unsigned long keys[CONST_MAX4(KEY_POWER, KEY_POWER2, KEY_SLEEP, KEY_SUSPEND)/ULONG_BITS+1];

                if (ioctl(fd, EVIOCGBIT(EV_KEY, sizeof keys), keys) < 0)
                        return -errno;

                if (bitset_get(keys, KEY_POWER) ||
                    bitset_get(keys, KEY_POWER2) ||
                    bitset_get(keys, KEY_SLEEP) ||
                    bitset_get(keys, KEY_SUSPEND))
                        return 1;
        }

        if (bitset_get(types, EV_SW)) {
                unsigned long switches[CONST_MAX(SW_LID, SW_DOCK)/ULONG_BITS+1];

                if (ioctl(fd, EVIOCGBIT(EV_SW, sizeof switches), switches) < 0)
                        return -errno;

                if (bitset_get(switches, SW_LID) ||
                    bitset_get(switches, SW_DOCK))
                        return 1;
        }

        return 0;
}
