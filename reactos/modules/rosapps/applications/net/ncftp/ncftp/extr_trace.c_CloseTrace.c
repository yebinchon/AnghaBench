
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName2 ;
typedef int pathName ;


 int OurDirectoryPath (char*,int,char*) ;
 char* ctime (int *) ;
 int fclose (int *) ;
 int fprintf (int *,char*,char*) ;
 char* gOurDirectoryPath ;
 int * gTraceFile ;
 int gTraceTime ;
 scalar_t__ getpid () ;
 char* kTraceFileName ;
 int rename (char*,char*) ;
 int sprintf (char*,char*,unsigned int) ;
 int time (int *) ;
 int unlink (char*) ;

void
CloseTrace(void)
{
 char pathName[256];
 char pathName2[256];
 char tName[32];

 if ((gOurDirectoryPath[0] == '\0') || (gTraceFile == ((void*)0)))
  return;

 (void) sprintf(tName, "trace.%u", (unsigned int) getpid());
 (void) OurDirectoryPath(pathName, sizeof(pathName), tName);
 (void) OurDirectoryPath(pathName2, sizeof(pathName2), kTraceFileName);

 (void) time(&gTraceTime);
 (void) fprintf(gTraceFile, "SESSION ENDED at:    %s", ctime(&gTraceTime));
 (void) fclose(gTraceFile);

 (void) unlink(pathName2);
 (void) rename(pathName, pathName2);
}
