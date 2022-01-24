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
struct TYPE_2__ {char* modi; } ;

/* Variables and functions */
 char* color_green ; 
 char* color_red ; 
 char* color_reset ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3 ( const char *mode )
{
    int is_term = FUNC2 ( FUNC0 ( stdout ) );
    // Only  output to terminal
    if ( is_term ) {
        FUNC1 ( stderr, "Mode %s%s%s is not enabled. I have enabled it for now.\n",
                  color_red, mode, color_reset );
        FUNC1 ( stderr, "Please consider adding %s%s%s to the list of enabled modi: %smodi: %s%s%s,%s%s.\n",
                  color_red, mode, color_reset,
                  color_green, config.modi, color_reset,
                  color_red, mode, color_reset
                  );
    }
}