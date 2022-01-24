#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UChar ;
struct TYPE_3__ {int buffLive; int buffer; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ Int32 ;
typedef  TYPE_1__ BitStream ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  bytesOut ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2 ( BitStream* bs, Int32 bit )
{
   if (bs->buffLive == 8) {
      Int32 retVal = FUNC0 ( (UChar) bs->buffer, bs->handle );
      if (retVal == EOF) FUNC1();
      bytesOut++;
      bs->buffLive = 1;
      bs->buffer = bit & 0x1;
   } else {
      bs->buffer = ( (bs->buffer << 1) | (bit & 0x1) );
      bs->buffLive++;
   };
}