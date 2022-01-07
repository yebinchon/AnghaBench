
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName ;


 int OurDirectoryPath (char*,int,int ) ;
 char* gOurDirectoryPath ;
 int gl_histloadfile (char*) ;
 int kHistoryFileName ;

void
LoadHistory(void)
{
 char pathName[256];

 if (gOurDirectoryPath[0] == '\0')
  return;
 (void) OurDirectoryPath(pathName, sizeof(pathName), kHistoryFileName);

 gl_histloadfile(pathName);
}
