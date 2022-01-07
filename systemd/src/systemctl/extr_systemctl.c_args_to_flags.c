
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitFileFlags ;


 int UNIT_FILE_FORCE ;
 int UNIT_FILE_RUNTIME ;
 scalar_t__ arg_force ;
 scalar_t__ arg_runtime ;

__attribute__((used)) static UnitFileFlags args_to_flags(void) {
        return (arg_runtime ? UNIT_FILE_RUNTIME : 0) |
               (arg_force ? UNIT_FILE_FORCE : 0);
}
