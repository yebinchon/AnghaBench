
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char UINT ;
struct TYPE_8__ {int cdir; } ;
struct TYPE_7__ {int* dir; int* fn; TYPE_2__* fs; int sclust; } ;
typedef char TCHAR ;
typedef scalar_t__ FRESULT ;
typedef TYPE_1__ DIR ;
typedef int BYTE ;


 int AM_DIR ;
 size_t DIR_Attr ;
 scalar_t__ FR_NO_FILE ;
 scalar_t__ FR_NO_PATH ;
 scalar_t__ FR_OK ;
 size_t NSFLAG ;
 int NS_DOT ;
 int NS_LAST ;
 scalar_t__ _FS_RPATH ;
 scalar_t__ create_name (TYPE_1__*,char const**) ;
 scalar_t__ dir_find (TYPE_1__*) ;
 scalar_t__ dir_sdi (TYPE_1__*,int ) ;
 int ld_clust (TYPE_2__*,int*) ;

__attribute__((used)) static
FRESULT follow_path (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 BYTE *dir, ns;
 if (*path == '/' || *path == '\\')
  path++;
 dp->sclust = 0;


 if ((UINT)*path < ' ') {
  res = dir_sdi(dp, 0);
  dp->dir = 0;
 } else {
  for (;;) {
   res = create_name(dp, &path);
   if (res != FR_OK) break;
   res = dir_find(dp);
   ns = dp->fn[NSFLAG];
   if (res != FR_OK) {
    if (res == FR_NO_FILE) {
     if (_FS_RPATH && (ns & NS_DOT)) {
      dp->sclust = 0; dp->dir = 0;
      if (!(ns & NS_LAST)) continue;
      res = FR_OK;
     } else {
      if (!(ns & NS_LAST)) res = FR_NO_PATH;
     }
    }
    break;
   }
   if (ns & NS_LAST) break;
   dir = dp->dir;
   if (!(dir[DIR_Attr] & AM_DIR)) {
    res = FR_NO_PATH; break;
   }
   dp->sclust = ld_clust(dp->fs, dir);
  }
 }

 return res;
}
