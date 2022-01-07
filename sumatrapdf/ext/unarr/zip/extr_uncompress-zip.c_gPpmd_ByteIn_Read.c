
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ByteReader {TYPE_2__* input; TYPE_3__* zip; } ;
struct TYPE_4__ {int data_left; } ;
struct TYPE_6__ {TYPE_1__ progress; } ;
struct TYPE_5__ {int* data; int offset; int bytes_left; } ;
typedef int Byte ;


 int zip_fill_input_buffer (TYPE_3__*) ;

__attribute__((used)) static Byte gPpmd_ByteIn_Read(void *p)
{
    struct ByteReader *self = p;
    if (!self->input->bytes_left && (!self->zip->progress.data_left || !zip_fill_input_buffer(self->zip)))
        return 0xFF;
    self->input->bytes_left--;
    return self->input->data[self->input->offset++];
}
