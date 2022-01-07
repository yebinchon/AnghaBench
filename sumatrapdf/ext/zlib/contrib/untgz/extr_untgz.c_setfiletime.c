
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct utimbuf {int modtime; int actime; } ;
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_wday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef void* WORD ;
struct TYPE_3__ {scalar_t__ wMilliseconds; void* wSecond; void* wMinute; void* wHour; void* wDay; void* wDayOfWeek; void* wMonth; void* wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef scalar_t__ HANDLE ;
typedef int FILETIME ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int ,int ,int *,int ,int ,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int GENERIC_WRITE ;
 int GetVersion () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LocalFileTimeToFileTime (int *,int *) ;
 int OPEN_EXISTING ;
 scalar_t__ SetFileTime (scalar_t__,int *,int *,int *) ;
 int SystemTimeToFileTime (TYPE_1__*,int *) ;
 struct tm* localtime (int *) ;
 int utime (char*,struct utimbuf*) ;

int setfiletime (char *fname,time_t ftime)
{
  struct utimbuf settime;

  settime.actime = settime.modtime = ftime;
  return utime(fname,&settime);

}
