
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wYear; scalar_t__ wMonth; scalar_t__ wDay; scalar_t__ wHour; scalar_t__ wMinute; scalar_t__ wSecond; scalar_t__ wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int FILETIME ;


 int FileTimeToSystemTime (int const*,TYPE_1__*) ;
 int abs (scalar_t__) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int ,int ) ;
 int printFileTime (int const*) ;
 int printSystemTime (TYPE_1__ const*) ;

__attribute__((used)) static void compareTime(const SYSTEMTIME *expected, const FILETIME *got)
{
    SYSTEMTIME st;

    FileTimeToSystemTime(got, &st);
    ok((expected->wYear == st.wYear &&
     expected->wMonth == st.wMonth &&
     expected->wDay == st.wDay &&
     expected->wHour == st.wHour &&
     expected->wMinute == st.wMinute &&
     expected->wSecond == st.wSecond &&
     abs(expected->wMilliseconds - st.wMilliseconds) <= 1) ||



     broken(expected->wYear == st.wYear &&
     expected->wMonth == st.wMonth &&
     expected->wDay == st.wDay &&
     abs(expected->wHour - st.wHour) <= 1),
     "Got unexpected value for time decoding:\nexpected %s, got %s\n",
     printSystemTime(expected), printFileTime(got));
}
