
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int url ;
typedef int localName ;
struct TYPE_4__ {double kBytesPerSec; int stalled; int netMode; int port; int host; int pass; int user; int startingWorkingDirectory; int * rname; int * lname; scalar_t__ startPoint; scalar_t__ bytesTransferred; scalar_t__ expectedSize; int percentCompleted; int secLeft; int useProgressMeter; int (* progress ) (TYPE_1__* const,int) ;} ;
typedef TYPE_1__* FTPCIPtr ;


 int AbbrevStr (char*,int *,int,int ) ;
 double FileSize (double,char const**,double*) ;
 int FileToURL (char*,int,int *,int ,int ,int ,int ,int ,int ) ;
 int LogXfer (char*,char*) ;
 int PrSizeAndRateMeter (TYPE_1__* const,int) ;
 int STRNCAT (char*,char*) ;
 int SetXtermTitle (char*,int *,int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int gRemoteCWD ;
 int kNetReading ;



 scalar_t__ kSizeUnknown ;
 int sprintf (char*,char*,char*,double,...) ;
 int stderr ;
 int stdout ;
 scalar_t__ strlen (char*) ;

void
PrStatBar(const FTPCIPtr cip, int mode)
{
 double rate, done;
 int secLeft, minLeft;
 const char *rStr;
 static const char *uStr;
 static double uTotal, uMult;
 const char *stall;
 char localName[80];
 char line[134];
 int i;

 switch (mode) {
  case 129:
   fflush(stdout);
   if (cip->expectedSize == kSizeUnknown) {
    cip->progress = PrSizeAndRateMeter;
    PrSizeAndRateMeter(cip, mode);
    return;
   }
   uTotal = FileSize((double) cip->expectedSize, &uStr, &uMult);

   if (cip->lname == ((void*)0)) {
    localName[0] = '\0';
   } else {

    AbbrevStr(localName, cip->lname, sizeof(localName) - 2, 0);
    (void) STRNCAT(localName, ":");
   }

   if (cip->useProgressMeter)
    (void) fprintf(stderr, "%-32s", localName);
   break;

  case 128:
   secLeft = (int) (cip->secLeft + 0.5);
   minLeft = secLeft / 60;
   secLeft = secLeft - (minLeft * 60);
   if (minLeft > 999) {
    minLeft = 999;
    secLeft = 59;
   }

   rate = FileSize(cip->kBytesPerSec * 1024.0, &rStr, ((void*)0));
   done = (double) (cip->bytesTransferred + cip->startPoint) / uMult;

   if (cip->lname == ((void*)0)) {
    localName[0] = '\0';
   } else {
    AbbrevStr(localName, cip->lname, 31, 0);
    (void) STRNCAT(localName, ":");
   }

   if (cip->stalled < 2)
    stall = " ";
   else if (cip->stalled < 15)
    stall = "-";
   else
    stall = "=";

   (void) sprintf(line, "%-32s   ETA: %3d:%02d  %6.2f/%6.2f %.2s  %6.2f %.2s/s %.1s",
    localName,
    minLeft,
    secLeft,
    done,
    uTotal,
    uStr,
    rate,
    rStr,
    stall
   );


   (void) fprintf(stderr, "\r%s", line);

   SetXtermTitle("%s - [%.1f%%]", cip->lname, cip->percentCompleted);
   break;

  case 130:

   rate = FileSize(cip->kBytesPerSec * 1024.0, &rStr, ((void*)0));
   done = (double) (cip->bytesTransferred + cip->startPoint) / uMult;

   if (cip->expectedSize == (cip->bytesTransferred + cip->startPoint)) {
    if (cip->lname == ((void*)0)) {
     localName[0] = '\0';
    } else {
     AbbrevStr(localName, cip->lname, 52, 0);
     (void) STRNCAT(localName, ":");
    }

    (void) sprintf(line, "%-53s  %6.2f %.2s  %6.2f %.2s/s  ",
     localName,
     uTotal,
     uStr,
     rate,
     rStr
    );
   } else {
    if (cip->lname == ((void*)0)) {
     localName[0] = '\0';
    } else {
     AbbrevStr(localName, cip->lname, 45, 0);
     (void) STRNCAT(localName, ":");
    }

    (void) sprintf(line, "%-46s  %6.2f/%6.2f %.2s  %6.2f %.2s/s  ",
     localName,
     done,
     uTotal,
     uStr,
     rate,
     rStr
    );
   }





   for (i = (int) strlen(line); i < 80 - 2; i++)
    line[i] = ' ';
   line[i] = '\0';


   (void) fprintf(stderr, "\r%s\n\r", line);
   break;
 }
}
