
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int local; } ;
typedef TYPE_1__ TransferInfo ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_transfer_info(const TransferInfo *a, const TransferInfo *b) {
        return strcmp(a->local, b->local);
}
