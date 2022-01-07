
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int symdir_t ;
struct TYPE_4__ {scalar_t__ dev; scalar_t__ ino; } ;
typedef TYPE_1__ dirkey_t ;


 int HASH_DELETE (int ,int ,int *) ;
 int HASH_FIND (int ,int ,TYPE_1__*,int,int *) ;
 int SYMLOOP_ERROR ;
 int SYMLOOP_OK ;
 int free (int *) ;
 int hh ;
 int log_err (char*) ;
 int symhash ;

__attribute__((used)) static int check_symloop_leave(dirkey_t *dirkey) {



    symdir_t *item_found = ((void*)0);

    if (dirkey->dev == 0 && dirkey->ino == 0) {
        return SYMLOOP_ERROR;
    }

    HASH_FIND(hh, symhash, dirkey, sizeof(dirkey_t), item_found);
    if (!item_found) {
        log_err("item not found! weird stuff...\n");
        return SYMLOOP_ERROR;
    }

    HASH_DELETE(hh, symhash, item_found);
    free(item_found);
    return SYMLOOP_OK;

}
