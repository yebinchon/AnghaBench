
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {int uncomp; TYPE_1__ entry; } ;
typedef TYPE_2__ ar_archive_rar ;
typedef int ar_archive ;


 int free (int ) ;
 int rar_clear_uncompress (int *) ;

__attribute__((used)) static void rar_close(ar_archive *ar)
{
    ar_archive_rar *rar = (ar_archive_rar *)ar;
    free(rar->entry.name);
    rar_clear_uncompress(&rar->uncomp);
}
