
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIRTUALIZATION_CONTAINER_FIRST ;
 int VIRTUALIZATION_CONTAINER_LAST ;

__attribute__((used)) static inline bool VIRTUALIZATION_IS_CONTAINER(int x) {
        return x >= VIRTUALIZATION_CONTAINER_FIRST && x <= VIRTUALIZATION_CONTAINER_LAST;
}
