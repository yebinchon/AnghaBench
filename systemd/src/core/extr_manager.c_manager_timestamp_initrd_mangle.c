
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ManagerTimestamp ;


 scalar_t__ MANAGER_TIMESTAMP_INITRD_SECURITY_START ;
 scalar_t__ MANAGER_TIMESTAMP_SECURITY_START ;
 scalar_t__ MANAGER_TIMESTAMP_UNITS_LOAD_FINISH ;
 scalar_t__ in_initrd () ;

ManagerTimestamp manager_timestamp_initrd_mangle(ManagerTimestamp s) {
        if (in_initrd() &&
            s >= MANAGER_TIMESTAMP_SECURITY_START &&
            s <= MANAGER_TIMESTAMP_UNITS_LOAD_FINISH)
                return s - MANAGER_TIMESTAMP_SECURITY_START + MANAGER_TIMESTAMP_INITRD_SECURITY_START;
        return s;
}
