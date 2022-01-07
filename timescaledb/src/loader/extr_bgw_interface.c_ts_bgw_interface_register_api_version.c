
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RENDEZVOUS_BGW_LOADER_API_VERSION ;
 void** find_rendezvous_variable (int ) ;
 int ts_bgw_loader_api_version ;

void
ts_bgw_interface_register_api_version()
{
 void **versionptr = find_rendezvous_variable(RENDEZVOUS_BGW_LOADER_API_VERSION);


 *versionptr = (void *) &ts_bgw_loader_api_version;
}
