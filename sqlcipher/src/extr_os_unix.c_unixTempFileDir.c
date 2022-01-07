
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int azDirs ;


 scalar_t__ S_ISDIR (int ) ;
 char* getenv (char*) ;
 scalar_t__ osAccess (char const*,int) ;
 scalar_t__ osStat (char const*,struct stat*) ;
 char* sqlite3_temp_directory ;

__attribute__((used)) static const char *unixTempFileDir(void){
  static const char *azDirs[] = {
     0,
     0,
     "/var/tmp",
     "/usr/tmp",
     "/tmp",
     "."
  };
  unsigned int i = 0;
  struct stat buf;
  const char *zDir = sqlite3_temp_directory;

  if( !azDirs[0] ) azDirs[0] = getenv("SQLITE_TMPDIR");
  if( !azDirs[1] ) azDirs[1] = getenv("TMPDIR");
  while(1){
    if( zDir!=0
     && osStat(zDir, &buf)==0
     && S_ISDIR(buf.st_mode)
     && osAccess(zDir, 03)==0
    ){
      return zDir;
    }
    if( i>=sizeof(azDirs)/sizeof(azDirs[0]) ) break;
    zDir = azDirs[i++];
  }
  return 0;
}
