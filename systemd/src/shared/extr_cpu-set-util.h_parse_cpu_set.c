
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CPUSet ;


 int parse_cpu_set_full (char const*,int *,int,int *,int *,int ,int *) ;

__attribute__((used)) static inline int parse_cpu_set(const char *rvalue, CPUSet *cpu_set){
        return parse_cpu_set_full(rvalue, cpu_set, 0, ((void*)0), ((void*)0), 0, ((void*)0));
}
