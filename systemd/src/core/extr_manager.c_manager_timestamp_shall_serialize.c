
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ManagerTimestamp ;


 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int MANAGER_TIMESTAMP_FINISH ;
 int MANAGER_TIMESTAMP_GENERATORS_FINISH ;
 int MANAGER_TIMESTAMP_GENERATORS_START ;
 int MANAGER_TIMESTAMP_SECURITY_FINISH ;
 int MANAGER_TIMESTAMP_SECURITY_START ;
 int MANAGER_TIMESTAMP_UNITS_LOAD_FINISH ;
 int MANAGER_TIMESTAMP_UNITS_LOAD_START ;
 int MANAGER_TIMESTAMP_USERSPACE ;
 int in_initrd () ;

__attribute__((used)) static bool manager_timestamp_shall_serialize(ManagerTimestamp t) {

        if (!in_initrd())
                return 1;


        return !IN_SET(t,
                       MANAGER_TIMESTAMP_USERSPACE, MANAGER_TIMESTAMP_FINISH,
                       MANAGER_TIMESTAMP_SECURITY_START, MANAGER_TIMESTAMP_SECURITY_FINISH,
                       MANAGER_TIMESTAMP_GENERATORS_START, MANAGER_TIMESTAMP_GENERATORS_FINISH,
                       MANAGER_TIMESTAMP_UNITS_LOAD_START, MANAGER_TIMESTAMP_UNITS_LOAD_FINISH);
}
