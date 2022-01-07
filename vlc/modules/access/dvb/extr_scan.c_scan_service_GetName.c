
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_name; } ;
typedef TYPE_1__ scan_service_t ;



const char * scan_service_GetName( const scan_service_t *s )
{
    return s->psz_name;
}
