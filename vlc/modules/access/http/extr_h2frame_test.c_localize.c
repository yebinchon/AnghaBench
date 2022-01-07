
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int* data; } ;


 int STREAM_ID ;

__attribute__((used)) static struct vlc_h2_frame *localize(struct vlc_h2_frame *f)
{
    f->data[5] = (STREAM_ID >> 24) & 0xff;
    f->data[6] = (STREAM_ID >> 16) & 0xff;
    f->data[7] = (STREAM_ID >> 8) & 0xff;
    f->data[8] = STREAM_ID & 0xff;
    return f;
}
