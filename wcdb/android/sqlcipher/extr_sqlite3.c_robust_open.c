
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int mode_t ;


 scalar_t__ EINTR ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int SQLITE_DEFAULT_FILE_PERMISSIONS ;
 int SQLITE_MINIMUM_FILE_DESCRIPTOR ;
 int SQLITE_WARNING ;
 scalar_t__ errno ;
 int osClose (int) ;
 int osFchmod (int,int) ;
 int osFcntl (int,int ,int) ;
 scalar_t__ osFstat (int,struct stat*) ;
 int osOpen (char const*,int,int) ;
 int sqlite3_log (int ,char*,char const*,int) ;

__attribute__((used)) static int robust_open(const char *z, int f, mode_t m){
  int fd;
  mode_t m2 = m ? m : SQLITE_DEFAULT_FILE_PERMISSIONS;
  while(1){



    fd = osOpen(z,f,m2);

    if( fd<0 ){
      if( errno==EINTR ) continue;
      break;
    }
    if( fd>=SQLITE_MINIMUM_FILE_DESCRIPTOR ) break;
    osClose(fd);
    sqlite3_log(SQLITE_WARNING,
                "attempt to open \"%s\" as file descriptor %d", z, fd);
    fd = -1;
    if( osOpen("/dev/null", f, m)<0 ) break;
  }
  if( fd>=0 ){
    if( m!=0 ){
      struct stat statbuf;
      if( osFstat(fd, &statbuf)==0
       && statbuf.st_size==0
       && (statbuf.st_mode&0777)!=m
      ){
        osFchmod(fd, m);
      }
    }



  }
  return fd;
}
