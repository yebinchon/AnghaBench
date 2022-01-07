
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 int AKEYCODE_APP_SWITCH ;
 int send_keycode (struct controller*,int ,int,char*) ;

__attribute__((used)) static inline void
action_app_switch(struct controller *controller, int actions) {
    send_keycode(controller, AKEYCODE_APP_SWITCH, actions, "APP_SWITCH");
}
