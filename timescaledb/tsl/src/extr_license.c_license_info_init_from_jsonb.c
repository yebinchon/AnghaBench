
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enterprise_features_enabled; int end_time; int start_time; int kind; int id; } ;
typedef TYPE_1__ LicenseInfo ;
typedef int Jsonb ;


 int ERROR ;
 int StrNCpy (int ,char*,int) ;
 int elog (int ,char*) ;
 int json_get_end_time (int *) ;
 char* json_get_id (int *) ;
 char* json_get_kind (int *) ;
 int json_get_start_time (int *) ;

__attribute__((used)) static void
license_info_init_from_jsonb(Jsonb *json_license, LicenseInfo *out)
{
 char *id_str = json_get_id(json_license);

 if (id_str == ((void*)0))
  elog(ERROR, "missing id in license key");
 StrNCpy(out->id, id_str, sizeof(out->id));
 StrNCpy(out->kind, json_get_kind(json_license), sizeof(out->kind));
 out->start_time = json_get_start_time(json_license);
 out->end_time = json_get_end_time(json_license);
 out->enterprise_features_enabled = 1;
}
