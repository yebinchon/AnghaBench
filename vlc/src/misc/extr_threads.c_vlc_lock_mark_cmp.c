
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_lock_mark {scalar_t__ object; } ;



__attribute__((used)) static int vlc_lock_mark_cmp(const void *a, const void *b)
{
    const struct vlc_lock_mark *ma = a, *mb = b;

    if (ma->object == mb->object)
        return 0;

    return ((uintptr_t)(ma->object) > (uintptr_t)(mb->object)) ? +1 : -1;
}
