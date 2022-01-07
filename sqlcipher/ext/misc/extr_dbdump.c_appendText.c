
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; int nAlloc; char* z; } ;
typedef TYPE_1__ DText ;


 int freeText (TYPE_1__*) ;
 int memcpy (char*,char const*,int) ;
 char* sqlite3_realloc (char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void appendText(DText *p, char const *zAppend, char quote){
  int len;
  int i;
  int nAppend = (int)(strlen(zAppend) & 0x3fffffff);

  len = nAppend+p->n+1;
  if( quote ){
    len += 2;
    for(i=0; i<nAppend; i++){
      if( zAppend[i]==quote ) len++;
    }
  }

  if( p->n+len>=p->nAlloc ){
    char *zNew;
    p->nAlloc = p->nAlloc*2 + len + 20;
    zNew = sqlite3_realloc(p->z, p->nAlloc);
    if( zNew==0 ){
      freeText(p);
      return;
    }
    p->z = zNew;
  }

  if( quote ){
    char *zCsr = p->z+p->n;
    *zCsr++ = quote;
    for(i=0; i<nAppend; i++){
      *zCsr++ = zAppend[i];
      if( zAppend[i]==quote ) *zCsr++ = quote;
    }
    *zCsr++ = quote;
    p->n = (int)(zCsr - p->z);
    *zCsr = '\0';
  }else{
    memcpy(p->z+p->n, zAppend, nAppend);
    p->n += nAppend;
    p->z[p->n] = '\0';
  }
}
