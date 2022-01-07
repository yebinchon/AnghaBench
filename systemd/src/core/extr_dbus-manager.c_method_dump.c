
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int dump_impl (int *,void*,int *,int ) ;
 int reply_dump ;

__attribute__((used)) static int method_dump(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return dump_impl(message, userdata, error, reply_dump);
}
