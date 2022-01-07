
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* pStubDesc; } ;
struct TYPE_6__ {size_t type_offset; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_7__ {unsigned char const* pFormatTypes; } ;
typedef TYPE_3__ NDR_PARAM_OIF ;


 TYPE_3__* get_ndr_types_params (unsigned int*) ;
 TYPE_4__* get_ndr_types_proxy_info () ;

__attribute__((used)) static const unsigned char *get_type_format_string( size_t *size )
{
    unsigned int nb_params;
    const NDR_PARAM_OIF *params = get_ndr_types_params( &nb_params );

    *size = params[nb_params - 1].u.type_offset;
    return get_ndr_types_proxy_info()->pStubDesc->pFormatTypes;
}
