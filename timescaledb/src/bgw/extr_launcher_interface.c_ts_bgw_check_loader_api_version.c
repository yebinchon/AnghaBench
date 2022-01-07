
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int MIN_LOADER_API_VERSION ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int ts_bgw_loader_api_version () ;

extern void
ts_bgw_check_loader_api_version()
{
 int version = ts_bgw_loader_api_version();

 if (version < MIN_LOADER_API_VERSION)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("loader version out-of-date"),
     errhint("Please restart the database to upgrade the loader version.")));
}
