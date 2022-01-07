
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitFileFlags ;


 int UNIT_FILE_FORCE ;
 int UNIT_FILE_RUNTIME ;

__attribute__((used)) static UnitFileFlags unit_file_bools_to_flags(bool runtime, bool force) {
        return (runtime ? UNIT_FILE_RUNTIME : 0) |
               (force ? UNIT_FILE_FORCE : 0);
}
