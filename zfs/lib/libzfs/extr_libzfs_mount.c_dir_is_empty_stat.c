
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static boolean_t
dir_is_empty_stat(const char *dirname)
{
 struct stat st;





 if (stat(dirname, &st) < 0 || !S_ISDIR(st.st_mode)) {
  return (B_TRUE);
 }





 if (st.st_size > 2) {
  return (B_FALSE);
 }

 return (B_TRUE);
}
