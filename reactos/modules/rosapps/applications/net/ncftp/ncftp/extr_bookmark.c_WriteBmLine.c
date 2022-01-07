
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tok ;
struct TYPE_3__ {char* bookmarkName; char* pass; int xferType; int hasSIZE; int hasMDTM; int hasPASV; int isUnix; char* lastIP; int xferMode; int hasUTIME; int ldir; int comment; scalar_t__ lastCall; scalar_t__ port; int dir; int acct; int user; int name; } ;
typedef int FILE ;
typedef TYPE_1__ Bookmark ;


 char* BmEscapeTok (char*,int,int ) ;
 int ToBase64 (char*,char*,int ,int) ;
 scalar_t__ fflush (int *) ;
 scalar_t__ fprintf (int *,char*,...) ;
 int kPasswordMagic ;
 int kPasswordMagicLen ;
 int memcpy (char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
WriteBmLine(Bookmark *bmp, FILE *outfp, int savePassword)
{
 char tok[256];
 char pass[160];

 if (fprintf(outfp, "%s", bmp->bookmarkName) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", BmEscapeTok(tok, sizeof(tok), bmp->name)) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", BmEscapeTok(tok, sizeof(tok), bmp->user)) < 0) return (-1) ;
 if ((bmp->pass[0] != '\0') && (savePassword == 1)) {
  (void) memcpy(pass, kPasswordMagic, kPasswordMagicLen);
  ToBase64(pass + kPasswordMagicLen, bmp->pass, strlen(bmp->pass), 1);
  if (fprintf(outfp, ",%s", pass) < 0) return (-1) ;
 } else {
  if (fprintf(outfp, ",%s", "") < 0) return (-1) ;
 }
 if (fprintf(outfp, ",%s", BmEscapeTok(tok, sizeof(tok), bmp->acct)) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", BmEscapeTok(tok, sizeof(tok), bmp->dir)) < 0) return (-1) ;
 if (fprintf(outfp, ",%c", bmp->xferType) < 0) return (-1) ;
 if (fprintf(outfp, ",%u", (unsigned int) bmp->port) < 0) return (-1) ;
 if (fprintf(outfp, ",%lu", (unsigned long) bmp->lastCall) < 0) return (-1) ;
 if (fprintf(outfp, ",%d", bmp->hasSIZE) < 0) return (-1) ;
 if (fprintf(outfp, ",%d", bmp->hasMDTM) < 0) return (-1) ;
 if (fprintf(outfp, ",%d", bmp->hasPASV) < 0) return (-1) ;
 if (fprintf(outfp, ",%d", bmp->isUnix) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", bmp->lastIP) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", BmEscapeTok(tok, sizeof(tok), bmp->comment)) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", "") < 0) return (-1) ;
 if (fprintf(outfp, ",%s", "") < 0) return (-1) ;
 if (fprintf(outfp, ",%s", "") < 0) return (-1) ;
 if (fprintf(outfp, ",%s", "") < 0) return (-1) ;
 if (fprintf(outfp, ",%c", bmp->xferMode) < 0) return (-1) ;
 if (fprintf(outfp, ",%d", bmp->hasUTIME) < 0) return (-1) ;
 if (fprintf(outfp, ",%s", BmEscapeTok(tok, sizeof(tok), bmp->ldir)) < 0) return (-1) ;
 if (fprintf(outfp, "\n") < 0) return (-1) ;
 if (fflush(outfp) < 0) return (-1);
 return (0);
}
