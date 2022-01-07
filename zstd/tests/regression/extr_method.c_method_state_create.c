
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* data; } ;
typedef TYPE_1__ method_state_t ;
typedef int data_t ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static method_state_t* method_state_create(data_t const* data) {
    method_state_t* state = (method_state_t*)malloc(sizeof(method_state_t));
    if (state == ((void*)0))
        return ((void*)0);
    state->data = data;
    return state;
}
