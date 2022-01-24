#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  ZipfileTab ;
struct TYPE_6__ {TYPE_1__* pCurrent; } ;
typedef  TYPE_2__ ZipfileCsr ;
struct TYPE_7__ {scalar_t__ iOffset; scalar_t__ iExternalAttr; scalar_t__ iInternalAttr; scalar_t__ iDiskStart; scalar_t__ nComment; scalar_t__ nExtra; scalar_t__ nFile; scalar_t__ szUncompressed; scalar_t__ szCompressed; scalar_t__ crc32; scalar_t__ mDate; scalar_t__ mTime; scalar_t__ iCompression; scalar_t__ flags; scalar_t__ iVersionExtract; scalar_t__ iVersionMadeBy; } ;
typedef  TYPE_3__ ZipfileCDS ;
struct TYPE_5__ {TYPE_3__ cds; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  ZipfileCsr *pCsr;
  ZipfileTab *pTab = (ZipfileTab*)FUNC5(context);
  FUNC0( argc>0 );

  pCsr = FUNC7(pTab, FUNC6(argv[0]));
  if( pCsr ){
    ZipfileCDS *p = &pCsr->pCurrent->cds;
    char *zRes = FUNC2("{"
        "\"version-made-by\" : %u, "
        "\"version-to-extract\" : %u, "
        "\"flags\" : %u, "
        "\"compression\" : %u, "
        "\"time\" : %u, "
        "\"date\" : %u, "
        "\"crc32\" : %u, "
        "\"compressed-size\" : %u, "
        "\"uncompressed-size\" : %u, "
        "\"file-name-length\" : %u, "
        "\"extra-field-length\" : %u, "
        "\"file-comment-length\" : %u, "
        "\"disk-number-start\" : %u, "
        "\"internal-attr\" : %u, "
        "\"external-attr\" : %u, "
        "\"offset\" : %u }",
        (u32)p->iVersionMadeBy, (u32)p->iVersionExtract,
        (u32)p->flags, (u32)p->iCompression,
        (u32)p->mTime, (u32)p->mDate,
        (u32)p->crc32, (u32)p->szCompressed,
        (u32)p->szUncompressed, (u32)p->nFile,
        (u32)p->nExtra, (u32)p->nComment,
        (u32)p->iDiskStart, (u32)p->iInternalAttr,
        (u32)p->iExternalAttr, (u32)p->iOffset
    );

    if( zRes==0 ){
      FUNC3(context);
    }else{
      FUNC4(context, zRes, -1, SQLITE_TRANSIENT);
      FUNC1(zRes);
    }
  }
}