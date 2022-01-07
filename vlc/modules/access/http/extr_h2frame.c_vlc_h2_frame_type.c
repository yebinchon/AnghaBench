
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast8_t ;
struct vlc_h2_frame {int * data; } ;



__attribute__((used)) static uint_fast8_t vlc_h2_frame_type(const struct vlc_h2_frame *f)
{
    return f->data[3];
}
