
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum libinput_config_status { ____Placeholder_libinput_config_status } libinput_config_status ;


 int LIBINPUT_CONFIG_STATUS_SUCCESS ;
 int SWAY_ERROR ;
 int libinput_config_status_to_str (int) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static void log_status(enum libinput_config_status status) {
 if (status != LIBINPUT_CONFIG_STATUS_SUCCESS) {
  sway_log(SWAY_ERROR, "Failed to apply libinput config: %s",
   libinput_config_status_to_str(status));
 }
}
