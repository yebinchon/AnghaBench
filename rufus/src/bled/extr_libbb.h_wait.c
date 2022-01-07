
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;



__attribute__((used)) static inline pid_t wait(int* status) { *status = 4; return -1; }
