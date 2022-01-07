
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int json_t ;
struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef int guint8 ;
typedef int SeafFSObject ;


 int SEAF_METADATA_TYPE_DIR ;
 int SEAF_METADATA_TYPE_FILE ;
 int g_free (int *) ;
 int json_decref (int *) ;
 int * json_loadb (char const*,int,int ,TYPE_1__*) ;
 int json_object_get_int_member (int *,char*) ;
 scalar_t__ seaf_decompress (int *,int,int **,int*) ;
 scalar_t__ seaf_dir_from_json_object (char const*,int *) ;
 int seaf_warning (char*,...) ;
 scalar_t__ seafile_from_json_object (char const*,int *) ;

SeafFSObject *
fs_object_from_json (const char *obj_id, uint8_t *data, int len)
{
    guint8 *decompressed;
    int outlen;
    json_t *object;
    json_error_t error;
    int type;
    SeafFSObject *fs_obj;

    if (seaf_decompress (data, len, &decompressed, &outlen) < 0) {
        seaf_warning ("Failed to decompress fs object %s.\n", obj_id);
        return ((void*)0);
    }

    object = json_loadb ((const char *)decompressed, outlen, 0, &error);
    g_free (decompressed);
    if (!object) {
        seaf_warning ("Failed to load fs json object: %s.\n", error.text);
        return ((void*)0);
    }

    type = json_object_get_int_member (object, "type");

    if (type == SEAF_METADATA_TYPE_FILE)
        fs_obj = (SeafFSObject *)seafile_from_json_object (obj_id, object);
    else if (type == SEAF_METADATA_TYPE_DIR)
        fs_obj = (SeafFSObject *)seaf_dir_from_json_object (obj_id, object);
    else {
        seaf_warning ("Invalid fs type %d.\n", type);
        json_decref (object);
        return ((void*)0);
    }

    json_decref (object);

    return fs_obj;
}
