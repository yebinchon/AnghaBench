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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int SQLITE_BLOB ; 
 int SQLITE_TEXT ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  int keyType,                 /* The key type */
  sqlite3_value *pValue,       /* The key value */
  u8 *pBuf,                    /* Storage space for a generated key */
  const u8 **ppKey,            /* OUT: the bytes of the key */
  int *pnKey                   /* OUT: size of the key */
){
  if( keyType==SQLITE_BLOB ){
    *ppKey = (const u8*)FUNC1(pValue);
    *pnKey = FUNC2(pValue);
  }else if( keyType==SQLITE_TEXT ){
    *ppKey = (const u8*)FUNC4(pValue);
    *pnKey = FUNC2(pValue);
  }else{
    sqlite3_int64 v = FUNC3(pValue);
    if( v<0 ) v = 0;
    *pnKey = FUNC0(pBuf, v);
    *ppKey = pBuf;
  }
}