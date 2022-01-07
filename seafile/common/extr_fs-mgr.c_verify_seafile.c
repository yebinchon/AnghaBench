
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gboolean ;


 scalar_t__ verify_fs_object_json (char const*,void*,int) ;
 scalar_t__ verify_seafile_v0 (char const*,void*,int,scalar_t__) ;

__attribute__((used)) static gboolean
verify_seafile (const char *id, void *data, int len,
                gboolean verify_id, gboolean is_json)
{
    if (is_json)
        return verify_fs_object_json (id, data, len);
    else
        return verify_seafile_v0 (id, data, len, verify_id);
}
