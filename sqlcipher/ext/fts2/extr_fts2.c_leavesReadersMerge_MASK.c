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
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  LeavesReader ;
typedef  int /*<<< orphan*/  LeafWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int MERGE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(fulltext_vtab *v,
                              LeavesReader *pReaders, int nReaders,
                              LeafWriter *pWriter){
  DLReader dlReaders[MERGE_COUNT];
  const char *pTerm = FUNC5(pReaders);
  int i, nTerm = FUNC6(pReaders);

  FUNC0( nReaders<=MERGE_COUNT );

  for(i=0; i<nReaders; i++){
    FUNC1(&dlReaders[i], DL_DEFAULT,
            FUNC3(pReaders+i),
            FUNC4(pReaders+i));
  }

  return FUNC2(v, pWriter, pTerm, nTerm, dlReaders, nReaders);
}