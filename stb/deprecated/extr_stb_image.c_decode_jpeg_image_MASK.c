#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ marker; int /*<<< orphan*/  s; scalar_t__ restart_interval; } ;
typedef  TYPE_1__ jpeg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MARKER_none ; 
 int /*<<< orphan*/  SCAN_load ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(jpeg *j)
{
   int m;
   j->restart_interval = 0;
   if (!FUNC3(j, SCAN_load)) return 0;
   m = FUNC6(j);
   while (!FUNC0(m)) {
      if (FUNC1(m)) {
         if (!FUNC9(j)) return 0;
         if (!FUNC7(j)) return 0;
         if (j->marker == MARKER_none ) {
            // handle 0s at the end of image data from IP Kamera 9060
            while (!FUNC2(j->s)) {
               int x = FUNC4(j->s);
               if (x == 255) {
                  j->marker = FUNC5(j->s);
                  break;
               } else if (x != 0) {
                  return 0;
               }
            }
            // if we reach eof without hitting a marker, get_marker() below will fail and we'll eventually return 0
         }
      } else {
         if (!FUNC8(j, m)) return 0;
      }
      m = FUNC6(j);
   }
   return 1;
}