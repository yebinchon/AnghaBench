
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ accuracy_log; scalar_t__* new_state_base; scalar_t__* num_bits; int * symbols; } ;
typedef TYPE_1__ FSE_dtable ;


 int BAD_ALLOC () ;
 void* malloc (int) ;

__attribute__((used)) static void FSE_init_dtable_rle(FSE_dtable *const dtable, const u8 symb) {
    dtable->symbols = malloc(sizeof(u8));
    dtable->num_bits = malloc(sizeof(u8));
    dtable->new_state_base = malloc(sizeof(u16));

    if (!dtable->symbols || !dtable->num_bits || !dtable->new_state_base) {
        BAD_ALLOC();
    }



    dtable->symbols[0] = symb;
    dtable->num_bits[0] = 0;
    dtable->new_state_base[0] = 0;
    dtable->accuracy_log = 0;
}
