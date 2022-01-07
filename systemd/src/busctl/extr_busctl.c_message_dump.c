
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int FILE ;


 int BUS_MESSAGE_DUMP_WITH_HEADER ;
 int bus_message_dump (int *,int *,int ) ;

__attribute__((used)) static int message_dump(sd_bus_message *m, FILE *f) {
        return bus_message_dump(m, f, BUS_MESSAGE_DUMP_WITH_HEADER);
}
