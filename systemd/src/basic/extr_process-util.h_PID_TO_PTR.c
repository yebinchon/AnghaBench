
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;



__attribute__((used)) static inline void* PID_TO_PTR(pid_t pid) {
        return (void*) ((uintptr_t) pid);
}
