
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clockid_t ;


 int CLOCK_BOOTTIME ;

 int CLOCK_REALTIME ;


__attribute__((used)) static clockid_t map_clock_id(clockid_t c) {






        switch (c) {

        case 129:
                return CLOCK_BOOTTIME;

        case 128:
                return CLOCK_REALTIME;

        default:
                return c;
        }
}
