
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_ROLE_READ_ALL_SETTINGS ;
 int EXTENSION_NAME ;
 int FATAL ;
 char* GetConfigOptionByName (char*,int *,int) ;
 int GetUserId () ;
 int ereport (int ,int ) ;
 int errhint (char*,...) ;
 int errmsg (char*,int ) ;
 scalar_t__ is_member_of_role (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ superuser () ;

__attribute__((used)) static void
extension_load_without_preload()
{

 char *allow_install_without_preload =
  GetConfigOptionByName("timescaledb.allow_install_without_preload", ((void*)0), 1);

 if (allow_install_without_preload == ((void*)0) || strcmp(allow_install_without_preload, "on") != 0)
 {
  if (is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS))

  {
   char *config_file = GetConfigOptionByName("config_file", ((void*)0), 0);

   ereport(FATAL,
     (errmsg("extension \"%s\" must be preloaded", EXTENSION_NAME),
      errhint("Please preload the timescaledb library via "
        "shared_preload_libraries.\n\n"
        "This can be done by editing the config file at: %1$s\n"
        "and adding 'timescaledb' to the list in the shared_preload_libraries "
        "config.\n"
        "	# Modify postgresql.conf:\n	shared_preload_libraries = "
        "'timescaledb'\n\n"
        "Another way to do this, if not preloading other libraries, is with "
        "the command:\n"
        "	echo \"shared_preload_libraries = 'timescaledb'\" >> %1$s \n\n"
        "(Will require a database restart.)\n\n"
        "If you REALLY know what you are doing and would like to load the "
        "library without preloading, you can disable this check with: \n"
        "	SET timescaledb.allow_install_without_preload = 'on';",
        config_file)));
  }
  else
  {
   ereport(FATAL,
     (errmsg("extension \"%s\" must be preloaded", EXTENSION_NAME),
      errhint(
       "Please preload the timescaledb library via shared_preload_libraries.\n\n"
       "This can be done by editing the postgres config file \n"
       "and adding 'timescaledb' to the list in the shared_preload_libraries "
       "config.\n"
       "	# Modify postgresql.conf:\n	shared_preload_libraries = "
       "'timescaledb'\n\n"
       "Another way to do this, if not preloading other libraries, is with the "
       "command:\n"
       "	echo \"shared_preload_libraries = 'timescaledb'\" >> "
       "/path/to/config/file \n\n"
       "(Will require a database restart.)\n\n"
       "If you REALLY know what you are doing and would like to load the library "
       "without preloading, you can disable this check with: \n"
       "	SET timescaledb.allow_install_without_preload = 'on';")));
  }

  return;
 }
}
