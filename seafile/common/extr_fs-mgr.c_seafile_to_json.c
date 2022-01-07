
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
typedef int guint8 ;
struct TYPE_3__ {int n_blocks; int file_id; int * blk_sha1s; int file_size; int version; } ;
typedef TYPE_1__ Seafile ;


 int JSON_SORT_KEYS ;
 int SEAF_METADATA_TYPE_FILE ;
 int calculate_sha1 (unsigned char*,char*,int) ;
 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_object () ;
 int json_object_set_int_member (int *,char*,int ) ;
 int json_object_set_new (int *,char*,int *) ;
 int json_string (int ) ;
 int rawdata_to_hex (unsigned char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static guint8 *
seafile_to_json (Seafile *file, int *len)
{
    json_t *object, *block_id_array;

    object = json_object ();

    json_object_set_int_member (object, "type", SEAF_METADATA_TYPE_FILE);
    json_object_set_int_member (object, "version", file->version);

    json_object_set_int_member (object, "size", file->file_size);

    block_id_array = json_array ();
    int i;
    for (i = 0; i < file->n_blocks; ++i) {
        json_array_append_new (block_id_array, json_string(file->blk_sha1s[i]));
    }
    json_object_set_new (object, "block_ids", block_id_array);

    char *data = json_dumps (object, JSON_SORT_KEYS);
    *len = strlen(data);

    unsigned char sha1[20];
    calculate_sha1 (sha1, data, *len);
    rawdata_to_hex (sha1, file->file_id, 20);

    json_decref (object);
    return (guint8 *)data;
}
