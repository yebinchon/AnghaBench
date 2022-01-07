
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int sd_bus_reply_method_return (int *,char*,char*) ;

__attribute__((used)) static int reply_dump(sd_bus_message *message, char *dump) {
        return sd_bus_reply_method_return(message, "s", dump);
}
