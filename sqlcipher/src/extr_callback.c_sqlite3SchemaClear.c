
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Trigger ;
typedef int Table ;
struct TYPE_2__ {int schemaFlags; int iGeneration; scalar_t__ pSeqTab; int fkeyHash; int tblHash; int idxHash; int trigHash; } ;
typedef TYPE_1__ Schema ;
typedef int HashElem ;
typedef int Hash ;


 int DB_ResetWanted ;
 int DB_SchemaLoaded ;
 int sqlite3DeleteTable (int ,int *) ;
 int sqlite3DeleteTrigger (int ,int *) ;
 int sqlite3HashClear (int *) ;
 int sqlite3HashInit (int *) ;
 int * sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

void sqlite3SchemaClear(void *p){
  Hash temp1;
  Hash temp2;
  HashElem *pElem;
  Schema *pSchema = (Schema *)p;

  temp1 = pSchema->tblHash;
  temp2 = pSchema->trigHash;
  sqlite3HashInit(&pSchema->trigHash);
  sqlite3HashClear(&pSchema->idxHash);
  for(pElem=sqliteHashFirst(&temp2); pElem; pElem=sqliteHashNext(pElem)){
    sqlite3DeleteTrigger(0, (Trigger*)sqliteHashData(pElem));
  }
  sqlite3HashClear(&temp2);
  sqlite3HashInit(&pSchema->tblHash);
  for(pElem=sqliteHashFirst(&temp1); pElem; pElem=sqliteHashNext(pElem)){
    Table *pTab = sqliteHashData(pElem);
    sqlite3DeleteTable(0, pTab);
  }
  sqlite3HashClear(&temp1);
  sqlite3HashClear(&pSchema->fkeyHash);
  pSchema->pSeqTab = 0;
  if( pSchema->schemaFlags & DB_SchemaLoaded ){
    pSchema->iGeneration++;
  }
  pSchema->schemaFlags &= ~(DB_SchemaLoaded|DB_ResetWanted);
}
