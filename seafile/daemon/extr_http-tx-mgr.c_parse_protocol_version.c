
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_5__ {int text; } ;
typedef TYPE_1__ json_error_t ;
struct TYPE_6__ {int version; } ;
typedef TYPE_2__ CheckProtocolData ;


 int json_decref (int *) ;
 int * json_loadb (char const*,int,int ,TYPE_1__*) ;
 int json_object_get_int_member (int *,char*) ;
 scalar_t__ json_object_has_member (int *,char*) ;
 int seaf_warning (char*,...) ;

__attribute__((used)) static int
parse_protocol_version (const char *rsp_content, int rsp_size, CheckProtocolData *data)
{
    json_t *object = ((void*)0);
    json_error_t jerror;
    int version;

    object = json_loadb (rsp_content, rsp_size, 0, &jerror);
    if (!object) {
        seaf_warning ("Parse response failed: %s.\n", jerror.text);
        return -1;
    }

    if (json_object_has_member (object, "version")) {
        version = json_object_get_int_member (object, "version");
        data->version = version;
    } else {
        seaf_warning ("Response doesn't contain protocol version.\n");
        json_decref (object);
        return -1;
    }

    json_decref (object);
    return 0;
}
