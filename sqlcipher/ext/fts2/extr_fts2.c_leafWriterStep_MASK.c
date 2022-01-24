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
typedef  int /*<<< orphan*/  LeafWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(fulltext_vtab *v, LeafWriter *pWriter,
                          const char *pTerm, int nTerm,
                          const char *pData, int nData){
  int rc;
  DLReader reader;

  FUNC1(&reader, DL_DEFAULT, pData, nData);
  rc = FUNC2(v, pWriter, pTerm, nTerm, &reader, 1);
  FUNC0(&reader);

  return rc;
}