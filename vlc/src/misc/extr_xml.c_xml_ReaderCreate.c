
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * p_module; int * p_stream; } ;
typedef TYPE_1__ xml_reader_t ;
typedef int vlc_object_t ;
typedef int stream_t ;


 int * module_need (TYPE_1__*,char*,int *,int) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

xml_reader_t *xml_ReaderCreate(vlc_object_t *obj, stream_t *stream)
{
    xml_reader_t *reader;

    reader = vlc_custom_create(obj, sizeof(*reader), "xml reader");

    reader->p_stream = stream;
    reader->p_module = module_need(reader, "xml reader", ((void*)0), 0);
    if (unlikely(reader->p_module == ((void*)0)))
    {
        msg_Err(reader, "XML reader not found");
        vlc_object_delete(reader);
        return ((void*)0);
    }
    return reader;
}
