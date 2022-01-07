
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_4__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_1__ FILETIME ;


 int FileTimeToDosDateTime (TYPE_1__ const*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void file_time_to_dos_date_time(const FILETIME *ft, WORD *fatdate,
                                           WORD *fattime)
{
    if (!ft->dwLowDateTime && !ft->dwHighDateTime)
        *fatdate = *fattime = 0;
    else
        FileTimeToDosDateTime(ft, fatdate, fattime);
}
