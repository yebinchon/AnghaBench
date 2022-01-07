
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time64_t ;
struct TYPE_3__ {int entry_filetime; } ;
typedef TYPE_1__ ar_archive ;



time64_t ar_entry_get_filetime(ar_archive *ar)
{
    return ar->entry_filetime;
}
