#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ zSegmentsTbl; scalar_t__ pSegments; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; int /*<<< orphan*/  zName; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int FTS3_NODE_CHUNKSIZE ; 
 int FTS3_NODE_CHUNK_THRESHOLD ; 
 scalar_t__ FTS3_NODE_PADDING ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

int FUNC9(
  Fts3Table *p,                   /* FTS3 table handle */
  sqlite3_int64 iBlockid,         /* Access the row with blockid=$iBlockid */
  char **paBlob,                  /* OUT: Blob data in malloc'd buffer */
  int *pnBlob,                    /* OUT: Size of blob data */
  int *pnLoad                     /* OUT: Bytes actually loaded */
){
  int rc;                         /* Return code */

  /* pnBlob must be non-NULL. paBlob may be NULL or non-NULL. */
  FUNC0( pnBlob );

  if( p->pSegments ){
    rc = FUNC5(p->pSegments, iBlockid);
  }else{
    if( 0==p->zSegmentsTbl ){
      p->zSegmentsTbl = FUNC8("%s_segments", p->zName);
      if( 0==p->zSegmentsTbl ) return SQLITE_NOMEM;
    }
    rc = FUNC3(
       p->db, p->zDb, p->zSegmentsTbl, "block", iBlockid, 0, &p->pSegments
    );
  }

  if( rc==SQLITE_OK ){
    int nByte = FUNC2(p->pSegments);
    *pnBlob = nByte;
    if( paBlob ){
      char *aByte = FUNC7(nByte + FTS3_NODE_PADDING);
      if( !aByte ){
        rc = SQLITE_NOMEM;
      }else{
        if( pnLoad && nByte>(FTS3_NODE_CHUNK_THRESHOLD) ){
          nByte = FTS3_NODE_CHUNKSIZE;
          *pnLoad = nByte;
        }
        rc = FUNC4(p->pSegments, aByte, nByte, 0);
        FUNC1(&aByte[nByte], 0, FTS3_NODE_PADDING);
        if( rc!=SQLITE_OK ){
          FUNC6(aByte);
          aByte = 0;
        }
      }
      *paBlob = aByte;
    }
  }

  return rc;
}