
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqliterk_btree_type ;
struct TYPE_3__ {scalar_t__ type; int * name; } ;
typedef TYPE_1__ sqliterk_btree ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 char* sqliterkBtreeGetTypeName (scalar_t__) ;
 int sqliterkBtreeIsSystemType (scalar_t__) ;
 int sqliterkOSFree (int *) ;
 int * sqliterkOSMalloc (int) ;
 scalar_t__ sqliterk_btree_type_system_begin ;
 scalar_t__ sqliterk_btree_type_system_end ;
 scalar_t__ sqliterk_btree_type_unknown ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (int *,char const*,size_t) ;
 int strncpy (int *,char const*,size_t) ;

int sqliterkBtreeSetMeta(sqliterk_btree *btree,
                         const char *name,
                         sqliterk_btree_type type)
{
    if (!btree) {
        return SQLITERK_MISUSE;
    }
    if (btree->name) {
        sqliterkOSFree(btree->name);
        btree->name = ((void*)0);
    }
    if (name) {
        size_t length = strlen(name);
        btree->name = sqliterkOSMalloc(sizeof(char) * (length + 1));
        if (!btree->name) {
            return SQLITERK_NOMEM;
        }
        strncpy(btree->name, name, length);

        sqliterk_btree_type i;
        for (i = sqliterk_btree_type_system_begin;
             i < sqliterk_btree_type_system_end; i++) {
            const char *typename = sqliterkBtreeGetTypeName(i);
            if (strncmp(btree->name, typename, strlen(typename)) == 0) {
                btree->type = i;
                break;
            }
        }
    } else {
        btree->name = ((void*)0);
    }
    if (!sqliterkBtreeIsSystemType(btree->type) &&
        type != sqliterk_btree_type_unknown) {
        btree->type = type;
    }
    return SQLITERK_OK;
}
