
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pszNextLastCDComponent; char* pszPD; char* pszPDPlusSlash; char* szCD; char* szCDPlusSlash; char* szCurDrive; char* pszLastCDComponent; char* szParentDir; char* szParentDirPlusSlash; char* szNextLastCDComponent; int szCurDriveSlash; } ;
typedef TYPE_1__ DirComponents ;
typedef int BOOLEAN ;


 int GetCurrentDirectory (int,char*) ;
 int check_result (int,char*) ;
 int exit (int) ;
 int memcpy (char*,char*,size_t const) ;
 int printf (char*,char*) ;
 int sprintf (int ,char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 void* strrchr (char*,char) ;

__attribute__((used)) static void InitDirComponents(DirComponents* p)
{



 BOOLEAN bOK;

 p->pszNextLastCDComponent = 0;
 p->pszPD = 0;
 p->pszPDPlusSlash = 0;

 GetCurrentDirectory(sizeof(p->szCD) / sizeof(*p->szCD), p->szCD);

 bOK = strlen(p->szCD) >= 2 && p->szCD[1] == ':';
 check_result(bOK, "Expected curdir to be a drive letter. It's not");

 if (!bOK) {
  printf("Curdir is \"%s\"\n", p->szCD);
  exit(1);
 }

 bOK = p->szCD[2] == '\\';
 check_result(bOK, "CD is missing a slash as its third character");
 if (!bOK) {
  printf("CD is \"%s\"\n", p->szCD);
  exit(1);
 }



 strcpy(p->szCDPlusSlash, p->szCD);
 if (strlen(p->szCD) > 3) {

  strcat(p->szCDPlusSlash, "\\");
 }

 memcpy(p->szCurDrive, p->szCD, 2);
 p->szCurDrive[2] = 0;
 sprintf(p->szCurDriveSlash, "%s\\", p->szCurDrive);

 p->pszLastCDComponent = strrchr(p->szCD, '\\');
 if (p->pszLastCDComponent)
 {

  memcpy(p->szParentDir, p->szCD, p->pszLastCDComponent - p->szCD);
  p->szParentDir[p->pszLastCDComponent - p->szCD] = 0;
  p->pszPD = p->szParentDir;
  if (strlen(p->szParentDir) == 2 && p->szParentDir[1] == ':') {


   strcat(p->szParentDir, "\\");
  }
  strcpy(p->szParentDirPlusSlash, p->szParentDir);
  if (p->szParentDirPlusSlash[strlen(p->szParentDirPlusSlash)-1] != '\\') {
   strcat(p->szParentDirPlusSlash, "\\");
  }
  p->pszPDPlusSlash = p->szParentDirPlusSlash;


  *p->pszLastCDComponent = 0;
  p->pszNextLastCDComponent = strrchr(p->szCD, '\\');
  *p->pszLastCDComponent = '\\';
  if (p->pszNextLastCDComponent) {
   ++p->pszNextLastCDComponent;
   if (p->pszNextLastCDComponent + 1 >= p->pszLastCDComponent) {
    p->pszNextLastCDComponent = 0;
   } else {
    const size_t siz = p->pszLastCDComponent - p->pszNextLastCDComponent;
    memcpy(p->szNextLastCDComponent, p->pszNextLastCDComponent, siz);
    p->szNextLastCDComponent[siz] = 0;
    p->pszNextLastCDComponent = p->szNextLastCDComponent;
   }
  }
 }
 if (p->pszLastCDComponent && p->pszLastCDComponent[1] == 0) {


  p->pszLastCDComponent = 0;
 } else {
  ++p->pszLastCDComponent;
 }
}
