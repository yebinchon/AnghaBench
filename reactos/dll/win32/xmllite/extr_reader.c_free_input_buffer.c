
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int input; int utf16; int encoded; } ;
typedef TYPE_1__ input_buffer ;


 int free_encoded_buffer (int ,int *) ;
 int readerinput_free (int ,TYPE_1__*) ;

__attribute__((used)) static void free_input_buffer(input_buffer *buffer)
{
    free_encoded_buffer(buffer->input, &buffer->encoded);
    free_encoded_buffer(buffer->input, &buffer->utf16);
    readerinput_free(buffer->input, buffer);
}
