
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int method_enable_unit_files_generic (int *,void*,int ,int,int *) ;
 int unit_file_preset_without_mode ;

__attribute__((used)) static int method_preset_unit_files(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return method_enable_unit_files_generic(message, userdata, unit_file_preset_without_mode, 1, error);
}
