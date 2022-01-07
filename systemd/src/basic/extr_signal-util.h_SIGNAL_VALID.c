
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _NSIG ;

__attribute__((used)) static inline bool SIGNAL_VALID(int signo) {
        return signo > 0 && signo < _NSIG;
}
