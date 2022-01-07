
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;

__attribute__((used)) static inline bool userns_supported(void) {
        return access("/proc/self/uid_map", F_OK) >= 0;
}
