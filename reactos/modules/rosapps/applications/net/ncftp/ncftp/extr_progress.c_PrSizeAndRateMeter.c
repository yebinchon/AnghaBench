
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int url ;
typedef long longest_int ;
typedef int localName ;
struct TYPE_4__ {double kBytesPerSec; int netMode; int port; int host; int pass; int user; int startingWorkingDirectory; int * rname; scalar_t__ startPoint; scalar_t__ bytesTransferred; int * lname; int usingTAR; int useProgressMeter; scalar_t__ expectedSize; int (* progress ) (TYPE_1__* const,int) ;} ;
typedef TYPE_1__* FTPCIPtr ;


 int AbbrevStr (char*,int *,int,int ) ;
 double FileSize (double,char const**,double*) ;
 int FileToURL (char*,int,int *,int ,int ,int ,int ,int ,int ) ;
 int LogXfer (char*,char*) ;
 int OneTimeMessage (char*) ;
 int PrStatBar (TYPE_1__* const,int) ;
 int STRNCAT (char*,char*) ;
 int SetXtermTitle (char*,int *,long) ;
 int fprintf (int ,char*,...) ;
 int gRemoteCWD ;
 int kNetReading ;



 scalar_t__ kSizeUnknown ;
 int sprintf (char*,char*,char*,long,double,char const*) ;
 int stderr ;
 int strlen (char*) ;

void
PrSizeAndRateMeter(const FTPCIPtr cip, int mode)
{
 double rate = 0.0;
 const char *rStr;
 static const char *uStr;
 static double uMult;
 char localName[32];
 char line[128];
 int i;

 switch (mode) {
  case 129:
   if (cip->expectedSize != kSizeUnknown) {
    cip->progress = PrStatBar;
    PrStatBar(cip, mode);
    return;
   }
   (void) FileSize((double) cip->expectedSize, &uStr, &uMult);

   if (cip->lname == ((void*)0)) {
    localName[0] = '\0';
   } else {
    AbbrevStr(localName, cip->lname, sizeof(localName) - 2, 0);
    if ((cip->usingTAR) && (strlen(localName) < (sizeof(localName) - 6))) {
     STRNCAT(localName, " (TAR)");
    }
    (void) STRNCAT(localName, ":");
   }
   if (cip->useProgressMeter) {
    (void) fprintf(stderr, "%-32s", localName);
   }
   break;

  case 128:
   rate = FileSize(cip->kBytesPerSec * 1024.0, &rStr, ((void*)0));

   if (cip->lname == ((void*)0)) {
    localName[0] = '\0';
   } else {
    AbbrevStr(localName, cip->lname, sizeof(localName) - 2, 0);
    if ((cip->usingTAR) && (strlen(localName) < (sizeof(localName) - 6))) {
     STRNCAT(localName, " (TAR)");
    }
    (void) STRNCAT(localName, ":");
   }
   (void) sprintf(line, "%-32s  %10ld bytes  %6.2f %s/s",
    localName,
    (long) (cip->bytesTransferred + cip->startPoint),
    rate,
    rStr
   );






   for (i = (int) strlen(line); i < 80 - 2; i++)
    line[i] = ' ';
   line[i] = '\0';


   (void) fprintf(stderr, "\r%s", line);
   SetXtermTitle("%s - [%ld bytes]", cip->lname, (long) (cip->bytesTransferred + cip->startPoint));

   break;

  case 130:
   (void) fprintf(stderr, "\n\r");
   break;
 }
}
