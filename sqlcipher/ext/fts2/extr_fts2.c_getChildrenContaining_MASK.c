#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  InteriorReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,int,int) ; 

__attribute__((used)) static void FUNC7(const char *pData, int nData,
                                  const char *pTerm, int nTerm, int isPrefix,
                                  sqlite_int64 *piStartChild,
                                  sqlite_int64 *piEndChild){
  InteriorReader reader;

  FUNC0( nData>1 );
  FUNC0( *pData!='\0' );
  FUNC4(pData, nData, &reader);

  /* Scan for the first child which could contain pTerm/nTerm. */
  while( !FUNC1(&reader) ){
    if( FUNC6(&reader, pTerm, nTerm, 0)>0 ) break;
    FUNC5(&reader);
  }
  *piStartChild = FUNC2(&reader);

  /* Keep scanning to find a term greater than our term, using prefix
  ** comparison if indicated.  If isPrefix is false, this will be the
  ** same blockid as the starting block.
  */
  while( !FUNC1(&reader) ){
    if( FUNC6(&reader, pTerm, nTerm, isPrefix)>0 ) break;
    FUNC5(&reader);
  }
  *piEndChild = FUNC2(&reader);

  FUNC3(&reader);

  /* Children must ascend, and if !prefix, both must be the same. */
  FUNC0( *piEndChild>=*piStartChild );
  FUNC0( isPrefix || *piStartChild==*piEndChild );
}