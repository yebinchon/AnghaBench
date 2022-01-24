#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int marker; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ jpeg ;

/* Variables and functions */
 int MARKER_none ; 
 int SCAN_type ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(jpeg *z, int scan)
{
   int m;
   z->marker = MARKER_none; // initialize cached marker to empty
   m = FUNC4(z);
   if (!FUNC1(m)) return FUNC3("no SOI","Corrupt JPEG");
   if (scan == SCAN_type) return 1;
   m = FUNC4(z);
   while (!FUNC0(m)) {
      if (!FUNC6(z,m)) return 0;
      m = FUNC4(z);
      while (m == MARKER_none) {
         // some files have extra padding after their blocks, so ok, we'll scan
         if (FUNC2(z->s)) return FUNC3("no SOF", "Corrupt JPEG");
         m = FUNC4(z);
      }
   }
   if (!FUNC5(z, scan)) return 0;
   return 1;
}