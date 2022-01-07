
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* db; scalar_t__ nErr; } ;
struct TYPE_13__ {int selFlags; } ;
struct TYPE_12__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;
typedef int NameContext ;


 int SF_HasTypeInfo ;
 int assert (int) ;
 int sqlite3ResolveSelectNames (TYPE_3__*,TYPE_2__*,int *) ;
 int sqlite3SelectAddTypeInfo (TYPE_3__*,TYPE_2__*) ;
 int sqlite3SelectExpand (TYPE_3__*,TYPE_2__*) ;

void sqlite3SelectPrep(
  Parse *pParse,
  Select *p,
  NameContext *pOuterNC
){
  assert( p!=0 || pParse->db->mallocFailed );
  if( pParse->db->mallocFailed ) return;
  if( p->selFlags & SF_HasTypeInfo ) return;
  sqlite3SelectExpand(pParse, p);
  if( pParse->nErr || pParse->db->mallocFailed ) return;
  sqlite3ResolveSelectNames(pParse, p, pOuterNC);
  if( pParse->nErr || pParse->db->mallocFailed ) return;
  sqlite3SelectAddTypeInfo(pParse, p);
}
