
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int method_state_t ;


 int free (int *) ;

__attribute__((used)) static void method_state_destroy(method_state_t* state) {
    free(state);
}
