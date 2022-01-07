
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef int Seafile ;
typedef TYPE_1__ SeafFSObject ;
typedef int SeafDir ;


 scalar_t__ SEAF_METADATA_TYPE_DIR ;
 scalar_t__ SEAF_METADATA_TYPE_FILE ;
 int seaf_dir_free (int *) ;
 int seafile_unref (int *) ;

void
seaf_fs_object_free (SeafFSObject *obj)
{
    if (!obj)
        return;

    if (obj->type == SEAF_METADATA_TYPE_FILE)
        seafile_unref ((Seafile *)obj);
    else if (obj->type == SEAF_METADATA_TYPE_DIR)
        seaf_dir_free ((SeafDir *)obj);
}
