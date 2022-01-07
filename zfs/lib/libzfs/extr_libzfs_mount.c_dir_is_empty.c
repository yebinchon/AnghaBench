
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs64 {scalar_t__ f_type; } ;
typedef int boolean_t ;


 scalar_t__ ZFS_SUPER_MAGIC ;
 int dir_is_empty_readdir (char const*) ;
 int dir_is_empty_stat (char const*) ;
 scalar_t__ statfs64 (char const*,struct statfs64*) ;

__attribute__((used)) static boolean_t
dir_is_empty(const char *dirname)
{
 struct statfs64 st;





 if ((statfs64(dirname, &st) != 0) ||
     (st.f_type != ZFS_SUPER_MAGIC)) {
  return (dir_is_empty_readdir(dirname));
 }
 return (dir_is_empty_stat(dirname));
}
