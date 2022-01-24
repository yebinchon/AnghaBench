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
typedef  int /*<<< orphan*/  UChar ;
struct TYPE_4__ {char mode; int buffLive; int buffer; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ Int32 ;
typedef  TYPE_1__ BitStream ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  bytesOut ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6 ( BitStream* bs )
{
   Int32 retVal;

   if ( bs->mode == 'w' ) {
      while ( bs->buffLive < 8 ) {
         bs->buffLive++;
         bs->buffer <<= 1;
      };
      retVal = FUNC3 ( (UChar) (bs->buffer), bs->handle );
      if (retVal == EOF) FUNC5();
      bytesOut++;
      retVal = FUNC1 ( bs->handle );
      if (retVal == EOF) FUNC5();
   }
   retVal = FUNC0 ( bs->handle );
   if (retVal == EOF) {
      if (bs->mode == 'w') FUNC5(); else FUNC4();
   }
   FUNC2 ( bs );
}