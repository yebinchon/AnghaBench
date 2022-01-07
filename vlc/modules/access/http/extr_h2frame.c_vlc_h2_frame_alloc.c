
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint_fast8_t ;
typedef int uint_fast32_t ;
struct vlc_h2_frame {size_t* data; int * next; } ;


 int EINVAL ;
 int SetDWBE (size_t*,int) ;
 int assert (int) ;
 int errno ;
 struct vlc_h2_frame* malloc (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct vlc_h2_frame *
vlc_h2_frame_alloc(uint_fast8_t type, uint_fast8_t flags,
                   uint_fast32_t stream_id, size_t length)
{
    assert((stream_id >> 31) == 0);

    if (unlikely(length >= (1u << 24)))
    {
        errno = EINVAL;
        return ((void*)0);
    }

    struct vlc_h2_frame *f = malloc(sizeof (*f) + 9 + length);
    if (unlikely(f == ((void*)0)))
        return ((void*)0);

    f->next = ((void*)0);
    f->data[0] = length >> 16;
    f->data[1] = length >> 8;
    f->data[2] = length;
    f->data[3] = type;
    f->data[4] = flags;
    SetDWBE(f->data + 5, stream_id);
    return f;
}
