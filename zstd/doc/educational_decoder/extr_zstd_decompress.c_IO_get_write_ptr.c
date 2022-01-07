
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {size_t len; int * ptr; } ;
typedef TYPE_1__ ostream_t ;


 int OUT_SIZE () ;

__attribute__((used)) static inline u8 *IO_get_write_ptr(ostream_t *const out, size_t len) {
    if (len > out->len) {
        OUT_SIZE();
    }
    u8 *const ptr = out->ptr;
    out->ptr += len;
    out->len -= len;

    return ptr;
}
