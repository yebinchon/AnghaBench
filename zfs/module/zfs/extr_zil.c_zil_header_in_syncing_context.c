
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zl_header; } ;
typedef TYPE_1__ zilog_t ;
typedef int zil_header_t ;



__attribute__((used)) static zil_header_t *
zil_header_in_syncing_context(zilog_t *zilog)
{
 return ((zil_header_t *)zilog->zl_header);
}
