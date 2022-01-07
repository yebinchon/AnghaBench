
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_6__ {char* dir; int lfn_idx; int* lfn; scalar_t__ sect; } ;
struct TYPE_5__ {char* fname; char fattrib; char* lfname; int lfsize; void* ftime; void* fdate; int fsize; } ;
typedef char TCHAR ;
typedef TYPE_1__ FILINFO ;
typedef TYPE_2__ DIR ;
typedef char BYTE ;


 scalar_t__ DDEM ;
 size_t DIR_Attr ;
 int DIR_FileSize ;
 size_t DIR_NTres ;
 int DIR_WrtDate ;
 int DIR_WrtTime ;
 scalar_t__ IsDBCS1 (char) ;
 scalar_t__ IsDBCS2 (char) ;
 scalar_t__ IsUpper (char) ;
 int LD_DWORD (char*) ;
 void* LD_WORD (char*) ;
 char NS_BODY ;
 char NS_EXT ;
 char RDDEM ;
 scalar_t__ _DF1S ;
 void* ff_convert (int,int) ;

__attribute__((used)) static
void get_fileinfo (
 DIR* dp,
 FILINFO* fno
)
{
 UINT i;
 TCHAR *p, c;
 BYTE *dir;




 p = fno->fname;
 if (dp->sect) {
  dir = dp->dir;
  i = 0;
  while (i < 11) {
   c = (TCHAR)dir[i++];
   if (c == ' ') continue;
   if (c == RDDEM) c = (TCHAR)DDEM;
   if (i == 9) *p++ = '.';
   *p++ = c;
  }
  fno->fattrib = dir[DIR_Attr];
  fno->fsize = LD_DWORD(dir + DIR_FileSize);
  fno->fdate = LD_WORD(dir + DIR_WrtDate);
  fno->ftime = LD_WORD(dir + DIR_WrtTime);
 }
 *p = 0;
}
