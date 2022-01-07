
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
struct stat {int st_size; int st_mode; } ;
typedef int sqlite3_int64 ;


 int S_ISREG (int ) ;
 int memset (struct stat*,int ,int) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static sqlite3_int64 fileSize(const char *zPath){
  struct stat x;
  int rc;
  memset(&x, 0, sizeof(x));
  rc = stat(zPath, &x);
  if( rc<0 ) return -1;
  if( !S_ISREG(x.st_mode) ) return -1;
  return x.st_size;
}
