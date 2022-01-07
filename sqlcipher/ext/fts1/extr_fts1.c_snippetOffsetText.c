
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zBuf ;
struct snippetMatch {int nByte; int iStart; int iTerm; int iCol; } ;
struct TYPE_7__ {int nMatch; int nOffset; int zOffset; struct snippetMatch* aMatch; } ;
struct TYPE_6__ {int len; int s; } ;
typedef TYPE_1__ StringBuffer ;
typedef TYPE_2__ Snippet ;


 int append (TYPE_1__*,char*) ;
 int initStringBuffer (TYPE_1__*) ;
 int sqlite3_snprintf (int,char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void snippetOffsetText(Snippet *p){
  int i;
  int cnt = 0;
  StringBuffer sb;
  char zBuf[200];
  if( p->zOffset ) return;
  initStringBuffer(&sb);
  for(i=0; i<p->nMatch; i++){
    struct snippetMatch *pMatch = &p->aMatch[i];
    zBuf[0] = ' ';
    sqlite3_snprintf(sizeof(zBuf)-1, &zBuf[cnt>0], "%d %d %d %d",
        pMatch->iCol, pMatch->iTerm, pMatch->iStart, pMatch->nByte);
    append(&sb, zBuf);
    cnt++;
  }
  p->zOffset = sb.s;
  p->nOffset = sb.len;
}
