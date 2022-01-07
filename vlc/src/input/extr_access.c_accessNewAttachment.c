
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {scalar_t__ psz_url; scalar_t__ psz_location; } ;
typedef TYPE_1__ stream_t ;
typedef int input_thread_t ;
typedef int input_attachment_t ;


 int * input_GetAttachment (int *,char const*) ;
 scalar_t__ strdup (char const*) ;
 int vlc_input_attachment_Delete (int *) ;
 TYPE_1__* vlc_stream_AttachmentNew (int *,int *) ;
 int vlc_stream_Delete (TYPE_1__*) ;

__attribute__((used)) static stream_t *accessNewAttachment(vlc_object_t *parent,
                                     input_thread_t *input, const char *mrl)
{
    if (!input)
        return ((void*)0);

    input_attachment_t *attachment = input_GetAttachment(input, mrl + 13);
    if (!attachment)
        return ((void*)0);
    stream_t *stream = vlc_stream_AttachmentNew(parent, attachment);
    if (!stream)
    {
        vlc_input_attachment_Delete(attachment);
        return ((void*)0);
    }
    stream->psz_url = strdup(mrl);
    if (!stream->psz_url)
    {
        vlc_stream_Delete(stream);
        return ((void*)0);
    }
    stream->psz_location = stream->psz_url + 13;
    return stream;
}
