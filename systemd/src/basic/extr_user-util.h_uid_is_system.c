
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 scalar_t__ SYSTEM_UID_MAX ;

__attribute__((used)) static inline bool uid_is_system(uid_t uid) {
        return uid <= SYSTEM_UID_MAX;
}
