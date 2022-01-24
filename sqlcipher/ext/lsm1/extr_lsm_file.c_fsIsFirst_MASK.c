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
struct TYPE_4__ {int nBlocksize; int nPagesize; int /*<<< orphan*/  pCompress; } ;
typedef  int const LsmPgno ;
typedef  TYPE_1__ FileSystem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(FileSystem *pFS, LsmPgno iPg){
  const int nPagePerBlock = (pFS->nBlocksize / pFS->nPagesize);
  FUNC0( !pFS->pCompress );
  return ( (iPg % nPagePerBlock)==1
        || (iPg<nPagePerBlock && iPg==FUNC1(pFS, 1))
  );
}