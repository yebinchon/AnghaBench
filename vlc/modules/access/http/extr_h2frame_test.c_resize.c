
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {size_t* data; } ;



__attribute__((used)) static struct vlc_h2_frame *resize(struct vlc_h2_frame *f, size_t size)
{
    f->data[0] = size >> 16;
    f->data[1] = size >> 8;
    f->data[2] = size;
    return f;
}
