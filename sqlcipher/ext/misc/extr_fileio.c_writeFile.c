
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {void* tv_sec; scalar_t__ tv_usec; } ;
struct timespec {void* tv_sec; scalar_t__ tv_nsec; } ;
struct stat {int st_mode; } ;
typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int mode_t ;
struct TYPE_5__ {int dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef int SYSTEMTIME ;
typedef scalar_t__ LPWSTR ;
typedef int LONGLONG ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ FILETIME ;
typedef int FILE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (scalar_t__,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ EEXIST ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_WRITE_ATTRIBUTES ;
 int GetSystemTime (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int Int32x32To64 (scalar_t__,int) ;
 int OPEN_EXISTING ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int SetFileTime (scalar_t__,int *,TYPE_1__*,TYPE_1__*) ;
 int SystemTimeToFileTime (int *,TYPE_1__*) ;
 scalar_t__ chmod (char const*,int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ fileStat (char const*,struct stat*) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fwrite (char const*,int,scalar_t__,int *) ;
 scalar_t__ mkdir (char const*,int) ;
 int sqlite3_free (scalar_t__) ;
 int sqlite3_result_int64 (int *,scalar_t__) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 scalar_t__ sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ symlink (char const*,char const*) ;
 void* time (int ) ;
 scalar_t__ utimensat (int ,char const*,struct timespec*,int ) ;
 scalar_t__ utimes (char const*,struct timeval*) ;

__attribute__((used)) static int writeFile(
  sqlite3_context *pCtx,
  const char *zFile,
  sqlite3_value *pData,
  mode_t mode,
  sqlite3_int64 mtime
){

  if( S_ISLNK(mode) ){
    const char *zTo = (const char*)sqlite3_value_text(pData);
    if( symlink(zTo, zFile)<0 ) return 1;
  }else

  {
    if( S_ISDIR(mode) ){
      if( mkdir(zFile, mode) ){




        struct stat sStat;
        if( errno!=EEXIST
         || 0!=fileStat(zFile, &sStat)
         || !S_ISDIR(sStat.st_mode)
         || ((sStat.st_mode&0777)!=(mode&0777) && 0!=chmod(zFile, mode&0777))
        ){
          return 1;
        }
      }
    }else{
      sqlite3_int64 nWrite = 0;
      const char *z;
      int rc = 0;
      FILE *out = fopen(zFile, "wb");
      if( out==0 ) return 1;
      z = (const char*)sqlite3_value_blob(pData);
      if( z ){
        sqlite3_int64 n = fwrite(z, 1, sqlite3_value_bytes(pData), out);
        nWrite = sqlite3_value_bytes(pData);
        if( nWrite!=n ){
          rc = 1;
        }
      }
      fclose(out);
      if( rc==0 && mode && chmod(zFile, mode & 0777) ){
        rc = 1;
      }
      if( rc ) return 2;
      sqlite3_result_int64(pCtx, nWrite);
    }
  }

  if( mtime>=0 ){
    struct timeval times[2];
    times[0].tv_usec = times[1].tv_usec = 0;
    times[0].tv_sec = time(0);
    times[1].tv_sec = mtime;
    if( utimes(zFile, times) ){
      return 1;
    }

  }

  return 0;
}
