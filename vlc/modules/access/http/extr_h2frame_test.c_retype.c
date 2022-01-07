
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {unsigned char* data; } ;



__attribute__((used)) static struct vlc_h2_frame *retype(struct vlc_h2_frame *f, unsigned char type)
{
    f->data[3] = type;
    return f;
}
