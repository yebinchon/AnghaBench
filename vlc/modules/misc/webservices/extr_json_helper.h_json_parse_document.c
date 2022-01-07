
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ json_value ;
typedef int json_settings ;


 scalar_t__ json_object ;
 TYPE_1__* json_parse_ex (int *,char const*,char*) ;
 int json_value_free (TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int msg_Warn (int *,char*,...) ;

__attribute__((used)) static inline
json_value * json_parse_document(vlc_object_t *p_obj, const char *psz_buffer)
{
    json_settings settings;
    char psz_error[128];
    memset (&settings, 0, sizeof (json_settings));
    json_value *root = json_parse_ex(&settings, psz_buffer, psz_error);
    if (root == ((void*)0))
    {
        msg_Warn(p_obj, "Can't parse json data: %s", psz_error);
        goto error;
    }
    if (root->type != json_object)
    {
        msg_Warn(p_obj, "wrong json root node");
        goto error;
    }

    return root;

error:
    if (root) json_value_free(root);
    return ((void*)0);
}
