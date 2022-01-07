
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_buffer ;
struct TYPE_3__ {scalar_t__ first; scalar_t__ last; } ;



int buffer_isempty(p_buffer buf) {
    return buf->first >= buf->last;
}
