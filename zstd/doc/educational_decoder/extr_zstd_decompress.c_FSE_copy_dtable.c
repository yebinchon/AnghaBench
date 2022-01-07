
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {size_t accuracy_log; void* new_state_base; void* num_bits; void* symbols; } ;
typedef TYPE_1__ FSE_dtable ;


 int BAD_ALLOC () ;
 void* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void FSE_copy_dtable(FSE_dtable *const dst, const FSE_dtable *const src) {
    if (src->accuracy_log == 0) {
        memset(dst, 0, sizeof(FSE_dtable));
        return;
    }

    size_t size = (size_t)1 << src->accuracy_log;
    dst->accuracy_log = src->accuracy_log;

    dst->symbols = malloc(size);
    dst->num_bits = malloc(size);
    dst->new_state_base = malloc(size * sizeof(u16));
    if (!dst->symbols || !dst->num_bits || !dst->new_state_base) {
        BAD_ALLOC();
    }

    memcpy(dst->symbols, src->symbols, size);
    memcpy(dst->num_bits, src->num_bits, size);
    memcpy(dst->new_state_base, src->new_state_base, size * sizeof(u16));
}
