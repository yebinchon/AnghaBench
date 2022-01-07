
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf2 ;
typedef int buf ;
struct TYPE_6__ {int nFileInfos; TYPE_1__** vec; scalar_t__ maxFileLen; } ;
struct TYPE_5__ {char* relname; char type; scalar_t__ relnameLen; } ;
typedef TYPE_1__** FileInfoVec ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_3__* FileInfoListPtr ;
typedef int FILE ;


 int Trace (int ,char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int gScreenColumns ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
LsC(FileInfoListPtr dirp, int endChars, FILE *stream)
{
 char buf[400];
 char buf2[400];
 int ncol, nrow;
 int i, j, k, l;
 int colw;
 int n;
 FileInfoVec itemv;
 FileInfoPtr itemp;
 char *cp1, *cp2, *lim;
 int screenColumns;

 screenColumns = gScreenColumns;
 if (screenColumns > 400)
  screenColumns = 400;
 ncol = (screenColumns - 1) / ((int) dirp->maxFileLen + 2 + endChars);
 if (ncol < 1)
  ncol = 1;
 colw = (screenColumns - 1) / ncol;
 n = dirp->nFileInfos;
 nrow = n / ncol;
 if ((n % ncol) != 0)
  nrow++;

 for (i=0; i<(int) sizeof(buf2); i++)
  buf2[i] = ' ';

 itemv = dirp->vec;

 for (j=0; j<nrow; j++) {
  (void) memcpy(buf, buf2, sizeof(buf));
  for (i=0, k=j, l=0; i<ncol; i++, k += nrow, l += colw) {
   if (k >= n)
    continue;
   itemp = itemv[k];
   cp1 = buf + l;
   lim = cp1 + (int) (itemp->relnameLen);
   cp2 = itemp->relname;
   while (cp1 < lim)
    *cp1++ = *cp2++;
   if (endChars != 0) {
    if (itemp->type == 'l') {




     *cp1++ = '@';
    } else if (itemp->type == 'd') {
     *cp1++ = '/';
    }
   }
  }
  for (cp1 = buf + sizeof(buf); *--cp1 == ' '; ) {}
  ++cp1;
  *cp1++ = '\n';
  *cp1 = '\0';
  (void) fprintf(stream, "%s", buf);
  Trace(0, "%s", buf);
 }
}
