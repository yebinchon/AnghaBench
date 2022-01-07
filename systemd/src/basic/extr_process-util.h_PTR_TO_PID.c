
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;



__attribute__((used)) static inline pid_t PTR_TO_PID(const void *p) {
        return (pid_t) ((uintptr_t) p);
}
