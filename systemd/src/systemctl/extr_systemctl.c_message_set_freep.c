
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int sd_bus_message_unref ;
 int set_free_with_destructor (int *,int ) ;

__attribute__((used)) static void message_set_freep(Set **set) {
        set_free_with_destructor(*set, sd_bus_message_unref);
}
