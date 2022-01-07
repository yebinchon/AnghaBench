
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Pointer ;
typedef int FT_Module ;


 int FT_UNUSED (int ) ;
 int ft_service_list_lookup (int ,char const*) ;
 int otvalid_services ;

__attribute__((used)) static FT_Pointer
  otvalid_get_service( FT_Module module,
                       const char* service_id )
  {
    FT_UNUSED( module );

    return ft_service_list_lookup( otvalid_services, service_id );
  }
