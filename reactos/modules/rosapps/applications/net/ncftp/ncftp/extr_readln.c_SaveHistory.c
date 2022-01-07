
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName ;


 int OurDirectoryPath (char*,int,int ) ;
 int Vt100VisibleStrlen ;
 int _chmod (char*,int) ;
 char* gOurDirectoryPath ;
 int gl_histsavefile (char*) ;
 int gl_strlen ;
 int kHistoryFileName ;

void
SaveHistory(void)
{
 char pathName[256];

 if (gOurDirectoryPath[0] == '\0')
  return;
 (void) OurDirectoryPath(pathName, sizeof(pathName), kHistoryFileName);

 gl_strlen = Vt100VisibleStrlen;
 gl_histsavefile(pathName);
 (void) _chmod(pathName, 00600);
}
