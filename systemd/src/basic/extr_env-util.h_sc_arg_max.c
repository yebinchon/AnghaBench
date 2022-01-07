
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_ARG_MAX ;
 int assert (int) ;
 long sysconf (int ) ;

__attribute__((used)) static inline size_t sc_arg_max(void) {
        long l = sysconf(_SC_ARG_MAX);
        assert(l > 0);
        return (size_t) l;
}
