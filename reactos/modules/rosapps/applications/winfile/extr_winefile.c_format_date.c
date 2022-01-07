
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ FILETIME ;


 scalar_t__ BUFFER_LEN ;
 int COL_DATE ;
 int COL_TIME ;
 int FileTimeToLocalFileTime (TYPE_1__ const*,TYPE_1__*) ;
 int FileTimeToSystemTime (TYPE_1__*,int *) ;
 int GetDateFormatW (int ,int ,int *,int ,char*,scalar_t__) ;
 int GetTimeFormatW (int ,int ,int *,int ,char*,scalar_t__) ;
 int LOCALE_USER_DEFAULT ;
 int lstrcpyW (char*,int ) ;
 int sQMarks ;

__attribute__((used)) static void format_date(const FILETIME* ft, WCHAR* buffer, int visible_cols)
{
 SYSTEMTIME systime;
 FILETIME lft;
 int len = 0;

 *buffer = '\0';

 if (!ft->dwLowDateTime && !ft->dwHighDateTime)
  return;

 if (!FileTimeToLocalFileTime(ft, &lft))
  {err: lstrcpyW(buffer,sQMarks); return;}

 if (!FileTimeToSystemTime(&lft, &systime))
  goto err;

 if (visible_cols & COL_DATE) {
  len = GetDateFormatW(LOCALE_USER_DEFAULT, 0, &systime, 0, buffer, BUFFER_LEN);
  if (!len)
   goto err;
 }

 if (visible_cols & COL_TIME) {
  if (len)
   buffer[len-1] = ' ';

  buffer[len++] = ' ';

  if (!GetTimeFormatW(LOCALE_USER_DEFAULT, 0, &systime, 0, buffer+len, BUFFER_LEN-len))
   buffer[len] = '\0';
 }
}
