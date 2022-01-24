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
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_2__ {void* boldital_font; void* ital_font; void* bold_font; void* norm_font; int /*<<< orphan*/  char_height; int /*<<< orphan*/  char_ascent; int /*<<< orphan*/  char_width; } ;

/* Variables and functions */
 int OK ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(char_u *font_name, int fontset)
{
    FUNC8((char*)font_name);

    gui.char_width = FUNC5();
    gui.char_height = FUNC4();
    gui.char_ascent = gui.char_height;

    char_u buf[100];

    gui.norm_font = FUNC3(font_name);
        
    FUNC2(buf, "bold ", 99); // should report 1 less to vim_strncpy 
    FUNC1(buf, font_name, 100);
    gui.bold_font = FUNC3(buf);

    FUNC2(buf, "italic ", 99); // should report 1 less to vim_strncpy 
    FUNC1(buf, font_name, 100);
    gui.ital_font = FUNC3(buf);

    FUNC2(buf, "bold italic ", 99); // should report 1 less to vim_strncpy 
    FUNC1(buf, font_name, 100);
    gui.boldital_font = FUNC3(buf);

    int w,h;
    w = FUNC7();
    h = FUNC6();
    FUNC0(w, h);

    return OK;
}