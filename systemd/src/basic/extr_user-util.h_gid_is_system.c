
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gid_t ;


 scalar_t__ SYSTEM_GID_MAX ;

__attribute__((used)) static inline bool gid_is_system(gid_t gid) {
        return gid <= SYSTEM_GID_MAX;
}
