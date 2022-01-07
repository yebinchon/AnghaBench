
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int new_state_base; int num_bits; int symbols; } ;
typedef TYPE_1__ FSE_dtable ;


 int free (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void FSE_free_dtable(FSE_dtable *const dtable) {
    free(dtable->symbols);
    free(dtable->num_bits);
    free(dtable->new_state_base);
    memset(dtable, 0, sizeof(FSE_dtable));
}
