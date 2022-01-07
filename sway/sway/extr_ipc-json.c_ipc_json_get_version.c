
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int json_object ;
struct TYPE_2__ {char* current_config_path; } ;


 char* SWAY_VERSION ;
 TYPE_1__* config ;
 int json_object_new_int (int) ;
 int * json_object_new_object () ;
 int json_object_new_string (char*) ;
 int json_object_object_add (int *,char*,int ) ;
 int sscanf (char*,char*,int*,int*,int*) ;

json_object *ipc_json_get_version(void) {
 int major = 0, minor = 0, patch = 0;
 json_object *version = json_object_new_object();

 sscanf(SWAY_VERSION, "%u.%u.%u", &major, &minor, &patch);

 json_object_object_add(version, "human_readable", json_object_new_string(SWAY_VERSION));
 json_object_object_add(version, "variant", json_object_new_string("sway"));
 json_object_object_add(version, "major", json_object_new_int(major));
 json_object_object_add(version, "minor", json_object_new_int(minor));
 json_object_object_add(version, "patch", json_object_new_int(patch));
 json_object_object_add(version, "loaded_config_file_name", json_object_new_string(config->current_config_path));

 return version;
}
