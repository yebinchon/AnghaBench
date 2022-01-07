
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int PROP_ICON_NAME ;
 int set_machine_info (void*,int *,int ,int (*) (int *,void*,int *),int *) ;

__attribute__((used)) static int method_set_icon_name(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        return set_machine_info(userdata, m, PROP_ICON_NAME, method_set_icon_name, error);
}
