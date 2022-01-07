
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locale; } ;
typedef TYPE_1__ StatusInfo ;


 int strv_free (int ) ;
 int zero (TYPE_1__) ;

__attribute__((used)) static void status_info_clear(StatusInfo *info) {
        if (info) {
                strv_free(info->locale);
                zero(*info);
        }
}
