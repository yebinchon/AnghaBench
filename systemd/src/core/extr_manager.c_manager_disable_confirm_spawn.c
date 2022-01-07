
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int touch (char*) ;

void manager_disable_confirm_spawn(void) {
        (void) touch("/run/systemd/confirm_spawn_disabled");
}
