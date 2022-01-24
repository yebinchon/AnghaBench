#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nData; scalar_t__ pData; } ;
typedef  TYPE_1__ DataBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int) ; 

__attribute__((used)) static void FUNC3(DataBuffer *pBuffer,
                             const char *pSource, int nSource){
  FUNC0( nSource>0 && pSource!=NULL );
  FUNC1(pBuffer, nSource);
  FUNC2(pBuffer->pData+pBuffer->nData, pSource, nSource);
  pBuffer->nData += nSource;
}