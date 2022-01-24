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
typedef  int /*<<< orphan*/  Fts5Iter ;
typedef  int /*<<< orphan*/  Fts5IndexIter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 

const char *FUNC1(Fts5IndexIter *pIndexIter, int *pn){
  int n;
  const char *z = (const char*)FUNC0((Fts5Iter*)pIndexIter, &n);
  *pn = n-1;
  return &z[1];
}