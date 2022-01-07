
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int * storage; int str_index; } ;
struct TYPE_7__ {int strings; } ;
typedef TYPE_2__ STORAGE ;
typedef TYPE_3__ MSISTORAGESVIEW ;
typedef int LPCWSTR ;
typedef int IStorage ;


 int IStorage_AddRef (int *) ;
 int StringNonPersistent ;
 int msi_add_string (int ,int ,int,int ) ;
 TYPE_2__* msi_alloc (int) ;

__attribute__((used)) static STORAGE *create_storage(MSISTORAGESVIEW *sv, LPCWSTR name, IStorage *stg)
{
    STORAGE *storage;

    storage = msi_alloc(sizeof(STORAGE));
    if (!storage)
        return ((void*)0);

    storage->str_index = msi_add_string(sv->db->strings, name, -1, StringNonPersistent);
    storage->storage = stg;

    if (storage->storage)
        IStorage_AddRef(storage->storage);

    return storage;
}
