
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; int drv; int fs_type; } ;
struct TYPE_3__ {scalar_t__ id; TYPE_2__* fs; } ;
typedef int FRESULT ;
typedef TYPE_1__ FIL ;


 int ENTER_FF (TYPE_2__*) ;
 int FR_INVALID_OBJECT ;
 int FR_OK ;
 int STA_NOINIT ;
 int disk_status (int ) ;

__attribute__((used)) static
FRESULT validate (
 void* obj
)
{
 FIL *fil = (FIL*)obj;


 if (!fil || !fil->fs || !fil->fs->fs_type || fil->fs->id != fil->id || (disk_status(fil->fs->drv) & STA_NOINIT))
  return FR_INVALID_OBJECT;

 ENTER_FF(fil->fs);

 return FR_OK;
}
