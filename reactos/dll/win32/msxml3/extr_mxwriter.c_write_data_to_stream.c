
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ written; int data; } ;
struct TYPE_5__ {TYPE_3__ encoded; } ;
struct TYPE_6__ {scalar_t__ xml_enc; int dest; TYPE_1__ buffer; } ;
typedef TYPE_2__ mxwriter ;
typedef TYPE_3__ encoded_buffer ;
typedef int ULONG ;
typedef int HRESULT ;


 int IStream_Write (int ,int ,scalar_t__,int *) ;
 int S_OK ;
 scalar_t__ XmlEncoding_UTF8 ;

__attribute__((used)) static HRESULT write_data_to_stream(mxwriter *writer)
{
    encoded_buffer *buffer = &writer->buffer.encoded;
    ULONG written = 0;

    if (!writer->dest)
        return S_OK;

    if (buffer->written == 0)
    {
        if (writer->xml_enc == XmlEncoding_UTF8)
            IStream_Write(writer->dest, buffer->data, 0, &written);
    }
    else
    {
        IStream_Write(writer->dest, buffer->data, buffer->written, &written);
        buffer->written = 0;
    }

    return S_OK;
}
