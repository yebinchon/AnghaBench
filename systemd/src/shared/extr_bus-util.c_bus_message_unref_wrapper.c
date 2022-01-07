
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sd_bus_message_unref (void*) ;

__attribute__((used)) static void bus_message_unref_wrapper(void *m) {
        sd_bus_message_unref(m);
}
