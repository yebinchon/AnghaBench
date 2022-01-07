
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zfs_share_proto_t ;
struct TYPE_2__ {int p_name; } ;


 TYPE_1__* proto_table ;
 int sa_parse_legacy_options (int *,char*,int ) ;

int
zfs_parse_options(char *options, zfs_share_proto_t proto)
{
 return (sa_parse_legacy_options(((void*)0), options,
     proto_table[proto].p_name));
}
