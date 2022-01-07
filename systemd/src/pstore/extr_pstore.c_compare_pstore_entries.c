
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d_name; } ;
struct TYPE_4__ {TYPE_1__ dirent; } ;
typedef TYPE_2__ PStoreEntry ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_pstore_entries(const void *_a, const void *_b) {
        PStoreEntry *a = (PStoreEntry *)_a, *b = (PStoreEntry *)_b;
        return strcmp(a->dirent.d_name, b->dirent.d_name);
}
