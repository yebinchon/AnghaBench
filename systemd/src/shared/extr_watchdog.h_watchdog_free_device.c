
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int watchdog_set_device (int *) ;

__attribute__((used)) static inline void watchdog_free_device(void) {
        (void) watchdog_set_device(((void*)0));
}
