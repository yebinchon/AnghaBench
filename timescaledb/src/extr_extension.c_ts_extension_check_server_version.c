
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EXTENSION_NAME ;
 char* GetConfigOptionByName (char*,int *,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char*) ;
 int is_supported_pg_version (long) ;
 long strtol (char*,int *,int) ;

void
ts_extension_check_server_version()
{




 char *server_version_num_guc = GetConfigOptionByName("server_version_num", ((void*)0), 0);
 long server_version_num = strtol(server_version_num_guc, ((void*)0), 10);

 if (!is_supported_pg_version(server_version_num))
 {
  char *server_version_guc = GetConfigOptionByName("server_version", ((void*)0), 0);

  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("extension \"%s\" does not support postgres version %s",
      EXTENSION_NAME,
      server_version_guc)));
 }
}
