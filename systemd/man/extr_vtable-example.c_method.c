
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int printf (char*,void*) ;

__attribute__((used)) static int method(sd_bus_message *m, void *userdata, sd_bus_error *error) {
  printf("Got called with userdata=%p\n", userdata);
  return 1;
}
