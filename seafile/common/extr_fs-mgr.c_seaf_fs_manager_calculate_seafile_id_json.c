
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int json_t ;
typedef int guint8 ;
struct TYPE_3__ {int block_nr; int * blk_sha1s; int file_size; } ;
typedef TYPE_1__ CDCFileDescriptor ;


 int JSON_SORT_KEYS ;
 int SEAF_METADATA_TYPE_FILE ;
 int calculate_sha1 (int *,char*,int) ;
 int free (char*) ;
 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_object () ;
 int json_object_set_int_member (int *,char*,int ) ;
 int json_object_set_new (int *,char*,int *) ;
 int json_string (char*) ;
 int rawdata_to_hex (int *,char*,int) ;
 int seafile_version_from_repo_version (int) ;
 int strlen (char*) ;

void
seaf_fs_manager_calculate_seafile_id_json (int repo_version,
                                           CDCFileDescriptor *cdc,
                                           guint8 *file_id_sha1)
{
    json_t *object, *block_id_array;

    object = json_object ();

    json_object_set_int_member (object, "type", SEAF_METADATA_TYPE_FILE);
    json_object_set_int_member (object, "version",
                                seafile_version_from_repo_version(repo_version));

    json_object_set_int_member (object, "size", cdc->file_size);

    block_id_array = json_array ();
    int i;
    uint8_t *ptr = cdc->blk_sha1s;
    char block_id[41];
    for (i = 0; i < cdc->block_nr; ++i) {
        rawdata_to_hex (ptr, block_id, 20);
        json_array_append_new (block_id_array, json_string(block_id));
        ptr += 20;
    }
    json_object_set_new (object, "block_ids", block_id_array);

    char *data = json_dumps (object, JSON_SORT_KEYS);
    int ondisk_size = strlen(data);


    calculate_sha1 (file_id_sha1, data, ondisk_size);

    json_decref (object);
    free (data);
}
