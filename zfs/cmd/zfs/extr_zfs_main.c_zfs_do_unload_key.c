
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int load_unload_keys (int,char**,int ) ;

__attribute__((used)) static int
zfs_do_unload_key(int argc, char **argv)
{
 return (load_unload_keys(argc, argv, B_FALSE));
}
