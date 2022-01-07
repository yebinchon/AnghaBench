
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;
typedef TYPE_2__ ar_archive_tar ;
typedef int ar_archive ;


 int free (int ) ;

__attribute__((used)) static void tar_close(ar_archive *ar)
{
    ar_archive_tar *tar = (ar_archive_tar *)ar;
    free(tar->entry.name);
}
