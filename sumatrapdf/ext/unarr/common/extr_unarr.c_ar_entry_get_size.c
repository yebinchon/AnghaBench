
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t entry_size_uncompressed; } ;
typedef TYPE_1__ ar_archive ;



size_t ar_entry_get_size(ar_archive *ar)
{
    return ar->entry_size_uncompressed;
}
