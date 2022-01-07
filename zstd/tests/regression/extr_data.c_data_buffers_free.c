
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffers; } ;
typedef TYPE_1__ data_buffers_t ;
typedef int data_buffer_t ;


 int free (int *) ;

void data_buffers_free(data_buffers_t buffers) {
    free((data_buffer_t*)buffers.buffers);
}
