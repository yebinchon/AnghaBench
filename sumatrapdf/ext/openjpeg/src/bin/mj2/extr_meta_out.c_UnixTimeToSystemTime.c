
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int LPSYSTEMTIME ;
typedef int FILETIME ;


 int FileTimeToLocalFileTime (int *,int *) ;
 int FileTimeToSystemTime (int *,int ) ;
 int UnixTimeToFileTime (int ,int *) ;

void UnixTimeToSystemTime(time_t t, LPSYSTEMTIME pst)
{

    FILETIME ft;
    UnixTimeToFileTime(t, &ft);
    FileTimeToLocalFileTime(&ft, &ft);
    FileTimeToSystemTime(&ft, pst);
}
