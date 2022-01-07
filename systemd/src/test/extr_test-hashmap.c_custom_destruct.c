
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int custom_counter ;
 int free (void*) ;

__attribute__((used)) static void custom_destruct(void* p) {
        custom_counter--;
        free(p);
}
