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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,...) ; 

__attribute__((used)) static char *FUNC2(
  int nColumn,                  /* Number of columns */
  const char *const* azColumn,  /* List of columns */
  const char *zTableName        /* Name of the table */
){
  int i;
  char *zSchema, *zNext;
  const char *zSep = "(";
  zSchema = FUNC1("CREATE TABLE x");
  for(i=0; i<nColumn; i++){
    zNext = FUNC1("%s%s%Q", zSchema, zSep, azColumn[i]);
    FUNC0(zSchema);
    zSchema = zNext;
    zSep = ",";
  }
  zNext = FUNC1("%s,%Q)", zSchema, zTableName);
  FUNC0(zSchema);
  return zNext;
}