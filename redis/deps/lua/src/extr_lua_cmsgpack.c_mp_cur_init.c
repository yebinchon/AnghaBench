
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* p; size_t left; int err; } ;
typedef TYPE_1__ mp_cur ;


 int MP_CUR_ERROR_NONE ;

void mp_cur_init(mp_cur *cursor, const unsigned char *s, size_t len) {
    cursor->p = s;
    cursor->left = len;
    cursor->err = MP_CUR_ERROR_NONE;
}
