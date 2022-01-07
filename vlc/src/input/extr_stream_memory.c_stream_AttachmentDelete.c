
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vlc_stream_attachment_private {int attachment; } ;
struct TYPE_4__ {int psz_name; } ;
typedef TYPE_1__ stream_t ;


 int free (int ) ;
 int vlc_input_attachment_Delete (int ) ;
 struct vlc_stream_attachment_private* vlc_stream_Private (TYPE_1__*) ;

__attribute__((used)) static void stream_AttachmentDelete(stream_t *s)
{
    struct vlc_stream_attachment_private *sys = vlc_stream_Private(s);

    vlc_input_attachment_Delete(sys->attachment);
    free(s->psz_name);
}
