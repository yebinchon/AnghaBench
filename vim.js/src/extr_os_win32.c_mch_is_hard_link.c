
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_3__ {int nNumberOfLinks; } ;
typedef TYPE_1__ BY_HANDLE_FILE_INFORMATION ;


 scalar_t__ FILEINFO_OK ;
 scalar_t__ win32_fileinfo (int *,TYPE_1__*) ;

int
mch_is_hard_link(char_u *fname)
{
    BY_HANDLE_FILE_INFORMATION info;

    return win32_fileinfo(fname, &info) == FILEINFO_OK
         && info.nNumberOfLinks > 1;
}
