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
typedef  int /*<<< orphan*/  Fts5Index ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(
  Fts5Index *pUnused, 
  void *pContext, 
  const u8 *pChunk, int nChunk
){
  FUNC0(pUnused);
  FUNC1( nChunk>=0 );
  if( nChunk>0 ){
    FUNC2((Fts5Buffer*)pContext, pChunk, nChunk);
  }
}