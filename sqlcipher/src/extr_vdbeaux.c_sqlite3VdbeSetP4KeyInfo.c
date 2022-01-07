
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_4__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;
typedef int KeyInfo ;
typedef int Index ;


 int P4_KEYINFO ;
 int assert (int) ;
 int * sqlite3KeyInfoOfIndex (TYPE_1__*,int *) ;
 int sqlite3VdbeAppendP4 (int *,int *,int ) ;

void sqlite3VdbeSetP4KeyInfo(Parse *pParse, Index *pIdx){
  Vdbe *v = pParse->pVdbe;
  KeyInfo *pKeyInfo;
  assert( v!=0 );
  assert( pIdx!=0 );
  pKeyInfo = sqlite3KeyInfoOfIndex(pParse, pIdx);
  if( pKeyInfo ) sqlite3VdbeAppendP4(v, pKeyInfo, P4_KEYINFO);
}
