
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int nUsed; int nAlloc; char* z; } ;


 int memcpy (int*,char const*,int) ;
 int memset (struct dstr*,int ,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_realloc (char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void dstrAppend(struct dstr *p, const char *z, int divider){
  int n = (int)strlen(z);
  if( p->nUsed + n + 2 > p->nAlloc ){
    char *zNew;
    p->nAlloc = p->nAlloc*2 + n + 200;
    zNew = sqlite3_realloc(p->z, p->nAlloc);
    if( zNew==0 ){
      sqlite3_free(p->z);
      memset(p, 0, sizeof(*p));
      return;
    }
    p->z = zNew;
  }
  if( divider && p->nUsed>0 ){
    p->z[p->nUsed++] = divider;
  }
  memcpy(&p->z[p->nUsed], z, n+1);
  p->nUsed += n;
}
