
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_type; int d_name; } ;
typedef int DIR ;


 int DT_DIR ;
 int closedir (int *) ;
 int error_out (char*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void traverse(
  const char *zDir,
  void *pCtx,
  void (*xCallback)(void*, const char *zPath)
){
  DIR *d;
  struct dirent *e;

  d = opendir(zDir);
  if( d==0 ) error_out("opendir()");

  for(e=readdir(d); e; e=readdir(d)){
    if( strcmp(e->d_name, ".")==0 || strcmp(e->d_name, "..")==0 ) continue;
    char *zPath = sqlite3_mprintf("%s/%s", zDir, e->d_name);
    if (e->d_type & DT_DIR) {
      traverse(zPath, pCtx, xCallback);
    }else{
      xCallback(pCtx, zPath);
    }
    sqlite3_free(zPath);
  }

  closedir(d);
}
