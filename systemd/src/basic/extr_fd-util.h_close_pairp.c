
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int safe_close_pair (int*) ;

__attribute__((used)) static inline void close_pairp(int (*p)[2]) {
        safe_close_pair(*p);
}
