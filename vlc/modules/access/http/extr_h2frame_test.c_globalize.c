
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {scalar_t__ data; } ;


 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static struct vlc_h2_frame *globalize(struct vlc_h2_frame *f)
{
    memset(f->data + 5, 0, 4);
    return f;
}
