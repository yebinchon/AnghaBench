#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_10__ {int /*<<< orphan*/ * pWriteFd; } ;
typedef  TYPE_4__ ZipfileTab ;
struct TYPE_9__ {TYPE_2__* pVtab; } ;
struct TYPE_11__ {int iId; TYPE_3__ base; TYPE_1__* pCurrent; int /*<<< orphan*/ * pFile; } ;
typedef  TYPE_5__ ZipfileCsr ;
struct TYPE_12__ {char* zFile; int iExternalAttr; int szUncompressed; int iCompression; int szCompressed; int /*<<< orphan*/  nFile; } ;
typedef  TYPE_6__ ZipfileCDS ;
struct TYPE_8__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_7__ {int mUnixTime; char* aData; int /*<<< orphan*/  iDataOff; TYPE_6__ cds; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
  sqlite3_vtab_cursor *cur,   /* The cursor */
  sqlite3_context *ctx,       /* First argument to sqlite3_result_...() */
  int i                       /* Which column to return */
){
  ZipfileCsr *pCsr = (ZipfileCsr*)cur;
  ZipfileCDS *pCDS = &pCsr->pCurrent->cds;
  int rc = SQLITE_OK;
  switch( i ){
    case 0:   /* name */
      FUNC6(ctx, pCDS->zFile, -1, SQLITE_TRANSIENT);
      break;
    case 1:   /* mode */
      /* TODO: Whether or not the following is correct surely depends on
      ** the platform on which the archive was created.  */
      FUNC4(ctx, pCDS->iExternalAttr >> 16);
      break;
    case 2: { /* mtime */
      FUNC5(ctx, pCsr->pCurrent->mUnixTime);
      break;
    }
    case 3: { /* sz */
      if( FUNC7(ctx)==0 ){
        FUNC5(ctx, pCDS->szUncompressed);
      }
      break;
    }
    case 4:   /* rawdata */
      if( FUNC7(ctx) ) break;
    case 5: { /* data */
      if( i==4 || pCDS->iCompression==0 || pCDS->iCompression==8 ){
        int sz = pCDS->szCompressed;
        int szFinal = pCDS->szUncompressed;
        if( szFinal>0 ){
          u8 *aBuf;
          u8 *aFree = 0;
          if( pCsr->pCurrent->aData ){
            aBuf = pCsr->pCurrent->aData;
          }else{
            aBuf = aFree = FUNC2(sz);
            if( aBuf==0 ){
              rc = SQLITE_NOMEM;
            }else{
              FILE *pFile = pCsr->pFile;
              if( pFile==0 ){
                pFile = ((ZipfileTab*)(pCsr->base.pVtab))->pWriteFd;
              }
              rc = FUNC9(pFile, aBuf, sz, pCsr->pCurrent->iDataOff,
                  &pCsr->base.pVtab->zErrMsg
              );
            }
          }
          if( rc==SQLITE_OK ){
            if( i==5 && pCDS->iCompression ){
              FUNC8(ctx, aBuf, sz, szFinal);
            }else{
              FUNC3(ctx, aBuf, sz, SQLITE_TRANSIENT);
            }
          }
          FUNC1(aFree);
        }else{
          /* Figure out if this is a directory or a zero-sized file. Consider
          ** it to be a directory either if the mode suggests so, or if
          ** the final character in the name is '/'.  */
          u32 mode = pCDS->iExternalAttr >> 16;
          if( !(mode & S_IFDIR) && pCDS->zFile[pCDS->nFile-1]!='/' ){
            FUNC3(ctx, "", 0, SQLITE_STATIC);
          }
        }
      }
      break;
    }
    case 6:   /* method */
      FUNC4(ctx, pCDS->iCompression);
      break;
    default:  /* z */
      FUNC0( i==7 );
      FUNC5(ctx, pCsr->iId);
      break;
  }

  return rc;
}