
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int GUC_ACTION_SET ;
 int PGC_SUSET ;
 int PGC_S_SESSION ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int set_config_option (char const*,char*,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static void
zero_guc(const char *guc_name)
{
 int config_change =
  set_config_option(guc_name, "0", PGC_SUSET, PGC_S_SESSION, GUC_ACTION_SET, 1, 0, 0);

 if (config_change == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR), errmsg("guc \"%s\" does not exist", guc_name)));
 else if (config_change < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR), errmsg("could not set \"%s\" guc", guc_name)));
}
