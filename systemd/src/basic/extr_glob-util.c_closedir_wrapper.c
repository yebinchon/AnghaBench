
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closedir (void*) ;

__attribute__((used)) static void closedir_wrapper(void* v) {
        (void) closedir(v);
}
