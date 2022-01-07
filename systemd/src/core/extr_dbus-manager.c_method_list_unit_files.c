
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int list_unit_files_by_patterns (int *,void*,int *,int *,int *) ;

__attribute__((used)) static int method_list_unit_files(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return list_unit_files_by_patterns(message, userdata, error, ((void*)0), ((void*)0));
}
