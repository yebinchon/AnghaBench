
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static inline void *mfree(void *memory) {
        free(memory);
        return ((void*)0);
}
