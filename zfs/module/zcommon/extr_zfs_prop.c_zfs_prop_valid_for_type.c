
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_type_t ;
typedef int boolean_t ;


 int zprop_valid_for_type (int,int ,int ) ;

boolean_t
zfs_prop_valid_for_type(int prop, zfs_type_t types, boolean_t headcheck)
{
 return (zprop_valid_for_type(prop, types, headcheck));
}
