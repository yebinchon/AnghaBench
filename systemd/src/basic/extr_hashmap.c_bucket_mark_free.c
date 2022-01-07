
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int entry_size; } ;
struct TYPE_6__ {size_t type; } ;
typedef TYPE_1__ HashmapBase ;


 int DIB_FREE ;
 int bucket_at (TYPE_1__*,unsigned int) ;
 int bucket_set_dib (TYPE_1__*,unsigned int,int ) ;
 TYPE_2__* hashmap_type_info ;
 int memzero (int ,int ) ;

__attribute__((used)) static void bucket_mark_free(HashmapBase *h, unsigned idx) {
        memzero(bucket_at(h, idx), hashmap_type_info[h->type].entry_size);
        bucket_set_dib(h, idx, DIB_FREE);
}
