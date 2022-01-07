
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIRTUALIZATION_VM_FIRST ;
 int VIRTUALIZATION_VM_LAST ;

__attribute__((used)) static inline bool VIRTUALIZATION_IS_VM(int x) {
        return x >= VIRTUALIZATION_VM_FIRST && x <= VIRTUALIZATION_VM_LAST;
}
