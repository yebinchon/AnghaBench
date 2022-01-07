
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef TYPE_1__ FILETIME ;


 int DosDateTimeToFileTime (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void dos_date_time_to_file_time(WORD fatdate, WORD fattime,
                                           FILETIME *ft)
{
    if (!fatdate && !fattime)
        ft->dwLowDateTime = ft->dwHighDateTime = 0;
    else
        DosDateTimeToFileTime(fatdate, fattime, ft);
}
