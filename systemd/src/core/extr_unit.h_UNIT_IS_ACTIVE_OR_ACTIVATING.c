
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitActiveState ;


 int IN_SET (int ,int ,int ,int ) ;
 int UNIT_ACTIVATING ;
 int UNIT_ACTIVE ;
 int UNIT_RELOADING ;

__attribute__((used)) static inline bool UNIT_IS_ACTIVE_OR_ACTIVATING(UnitActiveState t) {
        return IN_SET(t, UNIT_ACTIVE, UNIT_ACTIVATING, UNIT_RELOADING);
}
