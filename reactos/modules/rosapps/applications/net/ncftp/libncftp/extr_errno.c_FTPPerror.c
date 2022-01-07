
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lastFTPCmdResultStr; int errNo; } ;
typedef TYPE_1__* FTPCIPtr ;


 char* FTPStrError (int ) ;
 int fprintf (int ,char*,char const* const,...) ;
 int const kNoErr ;
 int stderr ;

void
FTPPerror(const FTPCIPtr cip, const int err, const int eerr, const char *const s1, const char *const s2)
{
 if (err != kNoErr) {
  if (err == eerr) {
   if ((s2 == ((void*)0)) || (s2[0] == '\0')) {
    if ((s1 == ((void*)0)) || (s1[0] == '\0')) {
     (void) fprintf(stderr, "server said: %s\n", cip->lastFTPCmdResultStr);
    } else {
     (void) fprintf(stderr, "%s: server said: %s\n", s1, cip->lastFTPCmdResultStr);
    }
   } else if ((s1 == ((void*)0)) || (s1[0] == '\0')) {
    (void) fprintf(stderr, "%s: server said: %s\n", s2, cip->lastFTPCmdResultStr);
   } else {
    (void) fprintf(stderr, "%s %s: server said: %s\n", s1, s2, cip->lastFTPCmdResultStr);
   }
  } else {
   if ((s2 == ((void*)0)) || (s2[0] == '\0')) {
    if ((s1 == ((void*)0)) || (s1[0] == '\0')) {
     (void) fprintf(stderr, "%s.\n", FTPStrError(cip->errNo));
    } else {
     (void) fprintf(stderr, "%s: %s.\n", s1, FTPStrError(cip->errNo));
    }
   } else if ((s1 == ((void*)0)) || (s1[0] == '\0')) {
    (void) fprintf(stderr, "%s: %s.\n", s2, FTPStrError(cip->errNo));
   } else {
    (void) fprintf(stderr, "%s %s: %s.\n", s1, s2, FTPStrError(cip->errNo));
   }
  }
 }
}
