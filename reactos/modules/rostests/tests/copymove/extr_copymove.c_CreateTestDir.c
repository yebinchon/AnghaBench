
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;


 int CreateDirectory (int ,int *) ;
 int GetLastError () ;
 int exit (int) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static void
CreateTestDir(LPCTSTR dirname)
{
 if (! CreateDirectory(dirname, ((void*)0))) {
  fprintf(stderr, "CreateDirectory failed with code %lu\n", GetLastError());
  exit(1);
 }
}
