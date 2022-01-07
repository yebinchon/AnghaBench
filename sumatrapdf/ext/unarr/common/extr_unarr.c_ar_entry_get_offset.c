
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off64_t ;
struct TYPE_3__ {int entry_offset; } ;
typedef TYPE_1__ ar_archive ;



off64_t ar_entry_get_offset(ar_archive *ar)
{
    return ar->entry_offset;
}
