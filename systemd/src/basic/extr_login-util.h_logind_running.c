
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;

__attribute__((used)) static inline bool logind_running(void) {
        return access("/run/systemd/seats/", F_OK) >= 0;
}
