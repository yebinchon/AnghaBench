
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitWriteFlags ;


 int UNIT_PERSISTENT ;
 int UNIT_RUNTIME ;

__attribute__((used)) static inline bool UNIT_WRITE_FLAGS_NOOP(UnitWriteFlags flags) {
        return (flags & (UNIT_RUNTIME|UNIT_PERSISTENT)) == 0;
}
