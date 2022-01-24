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
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_ICON_SIZE_BUTTON ; 
 int /*<<< orphan*/ * FUNC4 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GtkWidget *
FUNC12(const char *stock_id, const char *label)
{
    char_u	*text;
    GtkWidget	*box;
    GtkWidget	*alignment;
    GtkWidget	*button;

    text = FUNC0((char_u *)label);

    box = FUNC8(FALSE, 3);
    FUNC5(FUNC2(box),
		       FUNC9(stock_id, GTK_ICON_SIZE_BUTTON),
		       FALSE, FALSE, 0);
    FUNC5(FUNC2(box),
		       FUNC10((const char *)text),
		       FALSE, FALSE, 0);

    FUNC1(text);

    alignment = FUNC4((float)0.5, (float)0.5,
						      (float)0.0, (float)0.0);
    FUNC7(FUNC3(alignment), box);
    FUNC11(alignment);

    button = FUNC6();
    FUNC7(FUNC3(button), alignment);

    return button;
}