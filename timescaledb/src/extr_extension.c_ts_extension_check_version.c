
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int EXTENSION_NAME ;
 int FATAL ;
 int IsNormalProcessingMode () ;
 int IsTransactionState () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char const*,char*) ;
 int extension_exists () ;
 int extension_load_without_preload () ;
 int extension_loader_present () ;
 char* extension_version () ;
 int process_shared_preload_libraries_in_progress ;
 scalar_t__ strcmp (char*,char const*) ;

void
ts_extension_check_version(const char *so_version)
{
 char *sql_version;

 if (!IsNormalProcessingMode() || !IsTransactionState() || !extension_exists())
  return;
 sql_version = extension_version();

 if (strcmp(sql_version, so_version) != 0)
 {




  ereport(FATAL,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("extension \"%s\" version mismatch: shared library version %s; SQL version "
      "%s",
      EXTENSION_NAME,
      so_version,
      sql_version)));
 }

 if (!process_shared_preload_libraries_in_progress && !extension_loader_present())
 {
  extension_load_without_preload();
 }
}
