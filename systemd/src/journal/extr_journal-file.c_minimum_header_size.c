
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int TagObject ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_5__ {TYPE_1__ object; } ;
typedef int ObjectHeader ;
typedef TYPE_2__ Object ;
typedef int HashTableObject ;
typedef int FieldObject ;
typedef int EntryObject ;
typedef int EntryArrayObject ;
typedef int DataObject ;


 size_t ELEMENTSOF (int const*) ;
__attribute__((used)) static uint64_t minimum_header_size(Object *o) {

        static const uint64_t table[] = {
                [134] = sizeof(DataObject),
                [130] = sizeof(FieldObject),
                [132] = sizeof(EntryObject),
                [133] = sizeof(HashTableObject),
                [129] = sizeof(HashTableObject),
                [131] = sizeof(EntryArrayObject),
                [128] = sizeof(TagObject),
        };

        if (o->object.type >= ELEMENTSOF(table) || table[o->object.type] <= 0)
                return sizeof(ObjectHeader);

        return table[o->object.type];
}
