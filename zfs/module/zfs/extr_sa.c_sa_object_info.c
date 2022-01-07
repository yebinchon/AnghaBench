
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sa_bonus; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int dmu_object_info_t ;


 int dmu_object_info_from_db (int ,int *) ;

void
sa_object_info(sa_handle_t *hdl, dmu_object_info_t *doi)
{
 dmu_object_info_from_db(hdl->sa_bonus, doi);
}
