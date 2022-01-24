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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MemBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(MemBuffer* const mem,
                         const uint8_t* data, size_t size) {
  FUNC1(mem, 0, sizeof(*mem));
  return FUNC0(mem, data, size);
}