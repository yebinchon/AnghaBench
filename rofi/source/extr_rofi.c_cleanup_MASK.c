#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  GString ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bindings ; 
 int /*<<< orphan*/ * config_path ; 
 int /*<<< orphan*/ * config_path_new ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ list_of_error_msgs ; 
 int /*<<< orphan*/ * main_loop ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * modi ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int num_modi ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * rofi_theme ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15 ()
{
    for ( unsigned int i = 0; i < num_modi; i++ ) {
        FUNC9 ( modi[i] );
    }
    FUNC14 ();
    if ( main_loop != NULL  ) {
        FUNC7 ( main_loop );
        main_loop = NULL;
    }
    // Cleanup
    FUNC2 ();

    FUNC10 ( bindings );

    // Cleaning up memory allocated by the Xresources file.
    FUNC1 ();
    FUNC3 ( modi );

    FUNC3 ( config_path );
    FUNC3 ( config_path_new );

    if ( list_of_error_msgs ) {
        for ( GList *iter = FUNC4 ( list_of_error_msgs );
              iter != NULL; iter = FUNC6 ( iter ) ) {
            FUNC8 ( (GString *) iter->data, TRUE );
        }
        FUNC5 ( list_of_error_msgs );
    }

    if ( rofi_theme ) {
        FUNC13 ( rofi_theme );
        rofi_theme = NULL;
    }
    FUNC0 ();
    FUNC11 ( );
    FUNC12 ( );
}