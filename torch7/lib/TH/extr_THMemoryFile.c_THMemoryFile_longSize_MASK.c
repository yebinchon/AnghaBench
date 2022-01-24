#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int longSize; } ;
typedef  TYPE_1__ THMemoryFile ;
typedef  int /*<<< orphan*/  THFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 

void FUNC1(THFile *self, int size)
{
  THMemoryFile *dfself = (THMemoryFile*)(self);
  FUNC0(size == 0 || size == 4 || size == 8, 1, "Invalid long size specified");
  dfself->longSize = size;
}