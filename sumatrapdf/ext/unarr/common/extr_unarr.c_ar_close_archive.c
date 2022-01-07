
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* close ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ar_archive ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void ar_close_archive(ar_archive *ar)
{
    if (ar)
        ar->close(ar);
    free(ar);
}
