
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* (* get_name ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ar_archive ;


 char const* stub1 (TYPE_1__*) ;

const char *ar_entry_get_name(ar_archive *ar)
{
    return ar->get_name(ar);
}
