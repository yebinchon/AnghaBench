
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int UnitWriteFlags ;
typedef int Unit ;


 int bus_set_transient_usec_internal (int *,char const*,int *,int,int *,int ,int *) ;

__attribute__((used)) static inline int bus_set_transient_usec(Unit *u, const char *name, usec_t *p, sd_bus_message *message, UnitWriteFlags flags, sd_bus_error *error) {
        return bus_set_transient_usec_internal(u, name, p, 0, message, flags, error);
}
