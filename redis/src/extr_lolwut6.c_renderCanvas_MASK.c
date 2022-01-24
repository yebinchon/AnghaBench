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
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {int height; int width; } ;
typedef  TYPE_1__ lwCanvas ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static sds FUNC4(lwCanvas *canvas) {
    sds text = FUNC3();
    for (int y = 0; y < canvas->height; y++) {
        for (int x = 0; x < canvas->width; x++) {
            int color = FUNC0(canvas,x,y);
            char *ce; /* Color escape sequence. */

            /* Note that we set both the foreground and background color.
             * This way we are able to get a more consistent result among
             * different terminals implementations. */
            switch(color) {
            case 0: ce = "0;30;40m"; break;    /* Black */
            case 1: ce = "0;90;100m"; break;   /* Gray 1 */
            case 2: ce = "0;37;47m"; break;    /* Gray 2 */
            case 3: ce = "0;97;107m"; break;   /* White */
            default: ce = "0;30;40m"; break;   /* Just for safety. */
            }
            text = FUNC2(text,"\033[%s \033[0m",ce);
        }
        if (y != canvas->height-1) text = FUNC1(text,"\n",1);
    }
    return text;
}