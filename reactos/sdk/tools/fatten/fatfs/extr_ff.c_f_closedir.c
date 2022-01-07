
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fs; scalar_t__ lockid; } ;
typedef scalar_t__ FRESULT ;
typedef int FATFS ;
typedef TYPE_1__ DIR ;


 scalar_t__ FR_OK ;
 scalar_t__ dec_lock (scalar_t__) ;
 int unlock_fs (int *,scalar_t__) ;
 scalar_t__ validate (TYPE_1__*) ;

FRESULT f_closedir (
 DIR *dp
)
{
 FRESULT res;


 res = validate(dp);
 if (res == FR_OK) {
   dp->fs = 0;



 }
 return res;
}
