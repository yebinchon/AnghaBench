
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int gboolean ;


 int FALSE ;


 int TRUE ;
 int seaf_metadata_type_from_data (char const*,int *,int,int ) ;
 int seaf_warning (char*,int) ;
 int verify_seafdir_v0 (char const*,int *,int,int ) ;
 int verify_seafile_v0 (char const*,int *,int,int ) ;

__attribute__((used)) static gboolean
verify_fs_object_v0 (const char *obj_id,
                     uint8_t *data,
                     int len,
                     gboolean verify_id)
{
    gboolean ret = TRUE;

    int type = seaf_metadata_type_from_data (obj_id, data, len, FALSE);
    switch (type) {
    case 128:
        ret = verify_seafile_v0 (obj_id, data, len, verify_id);
        break;
    case 129:
        ret = verify_seafdir_v0 (obj_id, data, len, verify_id);
        break;
    default:
        seaf_warning ("Invalid meta data type: %d.\n", type);
        return FALSE;
    }

    return ret;
}
