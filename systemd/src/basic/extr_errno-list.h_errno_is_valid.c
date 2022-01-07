
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRNO_MAX ;

__attribute__((used)) static inline bool errno_is_valid(int n) {
        return n > 0 && n <= ERRNO_MAX;
}
