
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* p_buffer ;
struct TYPE_4__ {size_t received; scalar_t__ last; scalar_t__ first; } ;


 scalar_t__ buffer_isempty (TYPE_1__*) ;

__attribute__((used)) static void buffer_skip(p_buffer buf, size_t count) {
    buf->received += count;
    buf->first += count;
    if (buffer_isempty(buf))
        buf->first = buf->last = 0;
}
