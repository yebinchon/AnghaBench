
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int ts_guc_license_key ;

__attribute__((used)) static void
error_no_default_fn_community(void)
{
 ereport(ERROR,
   (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
    errmsg("functionality not supported under the current license \"%s\", license",
     ts_guc_license_key),
    errhint(
     "Upgrade to a Timescale-licensed binary to access this free community feature")));
}
