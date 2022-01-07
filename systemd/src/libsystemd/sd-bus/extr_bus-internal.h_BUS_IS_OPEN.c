
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bus_state { ____Placeholder_bus_state } bus_state ;


 int BUS_CLOSING ;
 int BUS_UNSET ;

__attribute__((used)) static inline bool BUS_IS_OPEN(enum bus_state state) {
        return state > BUS_UNSET && state < BUS_CLOSING;
}
