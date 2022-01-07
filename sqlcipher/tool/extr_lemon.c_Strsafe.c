
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MemoryCheck (char const*) ;
 char* Strsafe_find (char const*) ;
 int Strsafe_insert (char const*) ;
 scalar_t__ lemonStrlen (char const*) ;
 int lemon_strcpy (char*,char const*) ;
 scalar_t__ malloc (scalar_t__) ;

const char *Strsafe(const char *y)
{
  const char *z;
  char *cpy;

  if( y==0 ) return 0;
  z = Strsafe_find(y);
  if( z==0 && (cpy=(char *)malloc( lemonStrlen(y)+1 ))!=0 ){
    lemon_strcpy(cpy,y);
    z = cpy;
    Strsafe_insert(z);
  }
  MemoryCheck(z);
  return z;
}
