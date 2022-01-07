
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int szCopy ;
struct TYPE_4__ {char* key; char* value; struct TYPE_4__* nextPtr; } ;
typedef TYPE_1__ list_item_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fgets (char*,size_t,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,int,char*,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int list_free (TYPE_1__**) ;
 int list_insert (TYPE_1__**,char*,char*) ;
 int memcpy (char*,char*,int) ;
 int printf (char*) ;
 int stderr ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int
SubstituteFile(
    const char *substitutions,
    const char *filename)
{
    size_t cbBuffer = 1024;
    static char szBuffer[1024], szCopy[1024];
    char *szResult = ((void*)0);
    list_item_t *substPtr = ((void*)0);
    FILE *fp, *sp;

    fp = fopen(filename, "rt");
    if (fp != ((void*)0)) {





 sp = fopen(substitutions, "rt");
 if (sp != ((void*)0)) {
     while (fgets(szBuffer, cbBuffer, sp) != ((void*)0)) {
  unsigned char *ks, *ke, *vs, *ve;
  ks = (unsigned char*)szBuffer;
  while (ks && *ks && isspace(*ks)) ++ks;
  ke = ks;
  while (ke && *ke && !isspace(*ke)) ++ke;
  vs = ke;
  while (vs && *vs && isspace(*vs)) ++vs;
  ve = vs;
  while (ve && *ve && !(*ve == '\r' || *ve == '\n')) ++ve;
  *ke = 0, *ve = 0;
  list_insert(&substPtr, (char*)ks, (char*)vs);
     }
     fclose(sp);
 }
 while (fgets(szBuffer, cbBuffer, fp) != ((void*)0)) {
     list_item_t *p = ((void*)0);
     for (p = substPtr; p != ((void*)0); p = p->nextPtr) {
  char *m = strstr(szBuffer, p->key);
  if (m) {
      char *cp, *op, *sp;
      cp = szCopy;
      op = szBuffer;
      while (op != m) *cp++ = *op++;
      sp = p->value;
      while (sp && *sp) *cp++ = *sp++;
      op += strlen(p->key);
      while (*op) *cp++ = *op++;
      *cp = 0;
      memcpy(szBuffer, szCopy, sizeof(szCopy));
  }
     }
     printf(szBuffer);
 }

 list_free(&substPtr);
    }
    fclose(fp);
    return 0;
}
