
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** vec; } ;
struct TYPE_5__ {char* relname; scalar_t__ type; } ;
typedef TYPE_1__** FileInfoVec ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_3__* FileInfoListPtr ;
typedef int FILE ;


 int Trace (int ,char*,char*,char*) ;
 int fprintf (int *,char*,char*,char*) ;

void
Ls1(FileInfoListPtr dirp, int endChars, FILE *stream)
{
 char fTail[2];
 int i;
 int fType;
 FileInfoVec diritemv;
 FileInfoPtr diritemp;

 fTail[0] = '\0';
 fTail[1] = '\0';
 diritemv = dirp->vec;

 for (i=0; ; i++) {
  diritemp = diritemv[i];
  if (diritemp == ((void*)0))
   break;

  fType = (int) diritemp->type;
  if (endChars != 0) {
   if (fType == 'd')
    fTail[0] = '/';
   else
    fTail[0] = '\0';
  }

  (void) fprintf(stream, "%s%s\n",
   diritemp->relname,
   fTail
  );

  Trace(0, "%s%s\n",
   diritemp->relname,
   fTail
  );
 }
}
