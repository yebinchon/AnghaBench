
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* data; } ;
typedef TYPE_1__ method_state_t ;
typedef int data_t ;
struct TYPE_5__ {TYPE_1__ base; void* decompressed; void* compressed; int inputs; int dictionary; } ;
typedef TYPE_2__ buffer_state_t ;


 size_t const ZSTD_compressBound (size_t const) ;
 size_t buffers_max_size (int ) ;
 scalar_t__ calloc (int,int) ;
 void* data_buffer_create (size_t const) ;
 int data_buffer_get_dict (int const*) ;
 int data_buffers_get (int const*) ;

__attribute__((used)) static method_state_t* buffer_state_create(data_t const* data) {
    buffer_state_t* state = (buffer_state_t*)calloc(1, sizeof(buffer_state_t));
    if (state == ((void*)0))
        return ((void*)0);
    state->base.data = data;
    state->inputs = data_buffers_get(data);
    state->dictionary = data_buffer_get_dict(data);
    size_t const max_size = buffers_max_size(state->inputs);
    state->compressed = data_buffer_create(ZSTD_compressBound(max_size));
    state->decompressed = data_buffer_create(max_size);
    return &state->base;
}
