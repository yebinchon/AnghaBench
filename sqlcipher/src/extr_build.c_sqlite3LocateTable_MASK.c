#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int mDbFlags; int /*<<< orphan*/  aModule; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_14__ {int /*<<< orphan*/ * pEpoTab; } ;
struct TYPE_13__ {scalar_t__ disableVtab; int checkSchema; TYPE_1__* db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Module ;

/* Variables and functions */
 int DBFLAG_SchemaKnownOk ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int LOCATE_NOERR ; 
 int LOCATE_VIEW ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_3__* FUNC4 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

Table *FUNC8(
  Parse *pParse,         /* context in which to report errors */
  u32 flags,             /* LOCATE_VIEW or LOCATE_NOERR */
  const char *zName,     /* Name of the table we are looking for */
  const char *zDbase     /* Name of the database.  Might be NULL */
){
  Table *p;
  sqlite3 *db = pParse->db;

  /* Read the database schema. If an error occurs, leave an error message
  ** and code in pParse and return NULL. */
  if( (db->mDbFlags & DBFLAG_SchemaKnownOk)==0 
   && SQLITE_OK!=FUNC5(pParse)
  ){
    return 0;
  }

  p = FUNC2(db, zName, zDbase);
  if( p==0 ){
#ifndef SQLITE_OMIT_VIRTUALTABLE
    /* If zName is the not the name of a table in the schema created using
    ** CREATE, then check to see if it is the name of an virtual table that
    ** can be an eponymous virtual table. */
    if( pParse->disableVtab==0 ){
      Module *pMod = (Module*)FUNC3(&db->aModule, zName);
      if( pMod==0 && FUNC7(zName, "pragma_", 7)==0 ){
        pMod = FUNC4(db, zName);
      }
      if( pMod && FUNC6(pParse, pMod) ){
        return pMod->pEpoTab;
      }
    }
#endif
    if( flags & LOCATE_NOERR ) return 0;
    pParse->checkSchema = 1;
  }else if( FUNC0(p) && pParse->disableVtab ){
    p = 0;
  }

  if( p==0 ){
    const char *zMsg = flags & LOCATE_VIEW ? "no such view" : "no such table";
    if( zDbase ){
      FUNC1(pParse, "%s: %s.%s", zMsg, zDbase, zName);
    }else{
      FUNC1(pParse, "%s: %s", zMsg, zName);
    }
  }

  return p;
}