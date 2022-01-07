
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;



__attribute__((used)) static inline bool pid_is_valid(pid_t p) {
        return p > 0;
}
