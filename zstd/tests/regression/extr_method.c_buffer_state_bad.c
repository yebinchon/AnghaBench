
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ use_dictionary; } ;
typedef TYPE_5__ config_t ;
struct TYPE_9__ {int * data; } ;
struct TYPE_12__ {int * data; } ;
struct TYPE_11__ {int * data; } ;
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_14__ {TYPE_1__ dictionary; TYPE_4__ decompressed; TYPE_3__ compressed; TYPE_2__ inputs; } ;
typedef TYPE_6__ buffer_state_t ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int buffer_state_bad(
    buffer_state_t const* state,
    config_t const* config) {
    if (state == ((void*)0)) {
        fprintf(stderr, "buffer_state_t is NULL\n");
        return 1;
    }
    if (state->inputs.size == 0 || state->compressed.data == ((void*)0) ||
        state->decompressed.data == ((void*)0)) {
        fprintf(stderr, "buffer state allocation failure\n");
        return 1;
    }
    if (config->use_dictionary && state->dictionary.data == ((void*)0)) {
        fprintf(stderr, "dictionary loading failed\n");
        return 1;
    }
    return 0;
}
