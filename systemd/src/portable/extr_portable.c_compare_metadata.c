
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ PortableMetadata ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_metadata(PortableMetadata *const *x, PortableMetadata *const *y) {
        return strcmp((*x)->name, (*y)->name);
}
