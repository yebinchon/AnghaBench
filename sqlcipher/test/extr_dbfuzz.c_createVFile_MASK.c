#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sz; scalar_t__ zFilename; scalar_t__ a; scalar_t__ nRef; } ;
typedef  TYPE_1__ VFile ;
struct TYPE_6__ {TYPE_1__* aFile; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MX_FILE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int FUNC4 (scalar_t__,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__ g ; 
 void* FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static VFile *FUNC12(const char *zName, const char *zDiskFile){
  VFile *pNew = FUNC2(zName);
  int i;
  FILE *in = 0;
  long sz = 0;

  if( pNew ) return pNew;
  for(i=0; i<MX_FILE && g.aFile[i].sz>=0; i++){}
  if( i>=MX_FILE ) return 0;
  if( zDiskFile ){
    in = FUNC3(zDiskFile, "rb");
    if( in==0 ) FUNC0("no such file: \"%s\"", zDiskFile);
    FUNC6(in, 0, SEEK_END);
    sz = FUNC7(in);
    FUNC10(in);
  }
  pNew = &g.aFile[i];
  if( zName ){
    int nName = (int)FUNC11(zName)+1;
    pNew->zFilename = FUNC8(nName);
    if( pNew->zFilename==0 ){
      if( in ) FUNC1(in);
      return 0;
    }
    FUNC9(pNew->zFilename, zName, nName);
  }else{
    pNew->zFilename = 0;
  }
  pNew->nRef = 0;
  pNew->sz = sz;
  pNew->a = FUNC8(sz);
  if( sz>0 ){
    if( pNew->a==0 || FUNC4(pNew->a, sz, 1, in)<1 ){
      FUNC5(pNew->zFilename);
      FUNC5(pNew->a);
      pNew->a = 0;
      pNew->zFilename = 0;
      pNew->sz = -1;
      pNew = 0;
    }
  }
  if( in ) FUNC1(in);
  return pNew;
}