
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ serverType; int errNo; void* hasBUFSIZE; void* hasSBUFSZ; void* hasSBUFSIZ; void* hasSTORBUFSIZE; void* hasRBUFSIZ; void* hasRBUFSZ; void* hasRETRBUFSIZE; int ietfCompatLevel; void* hasCLNT; void* hasMLSD; void* hasMLST; void* hasUTIME; void* hasREST; void* hasMDTM; void* hasSIZE; void* hasPASV; void* hasFEAT; void* NLSTfileParamWorks; int magic; } ;
struct TYPE_16__ {char* line; struct TYPE_16__* next; } ;
struct TYPE_14__ {TYPE_3__* first; } ;
struct TYPE_15__ {int printMode; TYPE_1__ msg; } ;
typedef TYPE_2__* ResponsePtr ;
typedef TYPE_3__* LinePtr ;
typedef TYPE_4__* FTPCIPtr ;


 int DoneWithResponse (TYPE_4__* const,TYPE_2__*) ;
 int FTPExamineMlstFeatures (TYPE_4__* const,char*) ;
 scalar_t__ ISTRNCMP (char*,char*,int) ;
 TYPE_2__* InitResponse () ;
 int RCmd (TYPE_4__* const,TYPE_2__*,char*) ;
 int ReInitResponse (TYPE_4__* const,TYPE_2__*) ;
 int atoi (char*) ;
 int isupper (char) ;
 void* kCommandAvailable ;
 void* kCommandNotAvailable ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrMallocFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 int kResponseNoPrint ;
 int kResponseNoSave ;
 scalar_t__ kServerTypeNcFTPd ;
 scalar_t__ kServerTypeNetWareFTP ;
 scalar_t__ kServerTypeWuFTPd ;
 scalar_t__ strcmp (int ,int ) ;
 char* strstr (char*,char*) ;

int
FTPQueryFeatures(const FTPCIPtr cip)
{
 ResponsePtr rp;
 int result;
 LinePtr lp;
 char *cp, *p;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (cip->serverType == kServerTypeNetWareFTP) {




  cip->hasPASV = kCommandAvailable;
  cip->hasSIZE = kCommandNotAvailable;
  cip->hasMDTM = kCommandNotAvailable;
  cip->hasREST = kCommandNotAvailable;
  cip->NLSTfileParamWorks = kCommandAvailable;
  cip->hasUTIME = kCommandNotAvailable;
  cip->hasCLNT = kCommandNotAvailable;
  cip->hasMLST = kCommandNotAvailable;
  cip->hasMLSD = kCommandNotAvailable;
  return (kNoErr);
 }

 rp = InitResponse();
 if (rp == ((void*)0)) {
  cip->errNo = kErrMallocFailed;
  result = cip->errNo;
 } else {
  rp->printMode = (kResponseNoPrint|kResponseNoSave);
  result = RCmd(cip, rp, "FEAT");
  if (result < kNoErr) {
   DoneWithResponse(cip, rp);
   return (result);
  } else if (result != 2) {





    if (cip->serverType == kServerTypeWuFTPd) {
    cip->hasPASV = kCommandAvailable;
    cip->hasSIZE = kCommandAvailable;
    cip->hasMDTM = kCommandAvailable;
    cip->hasREST = kCommandAvailable;
    cip->NLSTfileParamWorks = kCommandAvailable;
   } else if (cip->serverType == kServerTypeNcFTPd) {
    cip->hasPASV = kCommandAvailable;
    cip->hasSIZE = kCommandAvailable;
    cip->hasMDTM = kCommandAvailable;
    cip->hasREST = kCommandAvailable;
    cip->NLSTfileParamWorks = kCommandAvailable;
   }





   cip->hasMLST = kCommandNotAvailable;
   cip->hasMLSD = kCommandNotAvailable;
  } else {
   cip->hasFEAT = kCommandAvailable;

   for (lp = rp->msg.first; lp != ((void*)0); lp = lp->next) {







    cp = lp->line;
    if (*cp++ != ' ')
     continue;
    if (ISTRNCMP(cp, "PASV", 4) == 0) {
     cip->hasPASV = kCommandAvailable;
    } else if (ISTRNCMP(cp, "SIZE", 4) == 0) {
     cip->hasSIZE = kCommandAvailable;
    } else if (ISTRNCMP(cp, "MDTM", 4) == 0) {
     cip->hasMDTM = kCommandAvailable;
    } else if (ISTRNCMP(cp, "REST", 4) == 0) {
     cip->hasREST = kCommandAvailable;
    } else if (ISTRNCMP(cp, "UTIME", 5) == 0) {
     cip->hasUTIME = kCommandAvailable;
    } else if (ISTRNCMP(cp, "MLST", 4) == 0) {
     cip->hasMLST = kCommandAvailable;
     cip->hasMLSD = kCommandAvailable;
     FTPExamineMlstFeatures(cip, cp + 5);
    } else if (ISTRNCMP(cp, "CLNT", 4) == 0) {
     cip->hasCLNT = kCommandAvailable;
    } else if (ISTRNCMP(cp, "Compliance Level: ", 18) == 0) {





     cip->ietfCompatLevel = atoi(cp + 18);
    }
   }
  }

  ReInitResponse(cip, rp);
  result = RCmd(cip, rp, "HELP SITE");
  if (result == 2) {
   for (lp = rp->msg.first; lp != ((void*)0); lp = lp->next) {
    cp = lp->line;
    if (strstr(cp, "RETRBUFSIZE") != ((void*)0))
     cip->hasRETRBUFSIZE = kCommandAvailable;
    if (strstr(cp, "RBUFSZ") != ((void*)0))
     cip->hasRBUFSZ = kCommandAvailable;

    if (
     ((p = strstr(cp, "RBUFSIZ")) != ((void*)0)) &&
     (
       (p == cp) ||
      ((p > cp) && (!isupper(p[-1])))
     )
    )
     cip->hasRBUFSIZ = kCommandAvailable;
    if (strstr(cp, "STORBUFSIZE") != ((void*)0))
     cip->hasSTORBUFSIZE = kCommandAvailable;
    if (strstr(cp, "SBUFSIZ") != ((void*)0))
     cip->hasSBUFSIZ = kCommandAvailable;
    if (strstr(cp, "SBUFSZ") != ((void*)0))
     cip->hasSBUFSZ = kCommandAvailable;
    if (strstr(cp, "BUFSIZE") != ((void*)0))
     cip->hasBUFSIZE = kCommandAvailable;
   }
  }
  DoneWithResponse(cip, rp);
 }

 return (kNoErr);
}
