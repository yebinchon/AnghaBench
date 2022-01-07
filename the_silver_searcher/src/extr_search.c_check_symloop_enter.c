
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int key; } ;
typedef TYPE_1__ symdir_t ;
struct stat {int st_ino; int st_dev; } ;
struct TYPE_10__ {int ino; int dev; } ;
typedef TYPE_2__ dirkey_t ;


 int HASH_ADD (int ,int ,int ,int,TYPE_1__*) ;
 int HASH_FIND (int ,int ,TYPE_2__*,int,TYPE_1__*) ;
 int SYMLOOP_ERROR ;
 int SYMLOOP_LOOP ;
 int SYMLOOP_OK ;
 scalar_t__ ag_malloc (int) ;
 int hh ;
 int key ;
 int log_err (char*,char const*) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stat (char const*,struct stat*) ;
 int symhash ;

__attribute__((used)) static int check_symloop_enter(const char *path, dirkey_t *outkey) {



    struct stat buf;
    symdir_t *item_found = ((void*)0);
    symdir_t *new_item = ((void*)0);

    memset(outkey, 0, sizeof(dirkey_t));
    outkey->dev = 0;
    outkey->ino = 0;

    int res = stat(path, &buf);
    if (res != 0) {
        log_err("Error stat()ing: %s", path);
        return SYMLOOP_ERROR;
    }

    outkey->dev = buf.st_dev;
    outkey->ino = buf.st_ino;

    HASH_FIND(hh, symhash, outkey, sizeof(dirkey_t), item_found);
    if (item_found) {
        return SYMLOOP_LOOP;
    }

    new_item = (symdir_t *)ag_malloc(sizeof(symdir_t));
    memcpy(&new_item->key, outkey, sizeof(dirkey_t));
    HASH_ADD(hh, symhash, key, sizeof(dirkey_t), new_item);
    return SYMLOOP_OK;

}
