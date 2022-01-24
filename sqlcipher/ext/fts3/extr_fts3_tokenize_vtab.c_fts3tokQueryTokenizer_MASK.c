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
typedef  int /*<<< orphan*/  sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  Fts3Hash ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(
  Fts3Hash *pHash,
  const char *zName,
  const sqlite3_tokenizer_module **pp,
  char **pzErr
){
  sqlite3_tokenizer_module *p;
  int nName = (int)FUNC2(zName);

  p = (sqlite3_tokenizer_module *)FUNC1(pHash, zName, nName+1);
  if( !p ){
    FUNC0(pzErr, "unknown tokenizer: %s", zName);
    return SQLITE_ERROR;
  }

  *pp = p;
  return SQLITE_OK;
}