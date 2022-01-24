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
typedef  int /*<<< orphan*/  synctex_status_t ;
typedef  int /*<<< orphan*/  synctex_scanner_t ;

/* Variables and functions */
 scalar_t__ SYNCTEX_CHAR_BEGIN_SHEET ; 
 scalar_t__ SYNCTEX_CHAR_END_SHEET ; 
 scalar_t__* SYNCTEX_CUR ; 
 scalar_t__* SYNCTEX_END ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SYNCTEX_STATUS_ERROR ; 
 scalar_t__ SYNCTEX_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

synctex_status_t FUNC3(synctex_scanner_t scanner) {
    unsigned int depth = 0;
deeper:
    ++depth;
    if (FUNC2(scanner)<SYNCTEX_STATUS_OK) {
        FUNC1("Unexpected end of nested sheet (1).");
        FUNC0(SYNCTEX_STATUS_ERROR);
    }
scan_next_line:
    if (SYNCTEX_CUR<SYNCTEX_END) {
		if (*SYNCTEX_CUR == SYNCTEX_CHAR_END_SHEET) {
			++SYNCTEX_CUR;
			if (FUNC2(scanner)<SYNCTEX_STATUS_OK) {
				FUNC1("Unexpected end of nested sheet (2).");
				FUNC0(SYNCTEX_STATUS_ERROR);
			}
            if (--depth>0) {
                goto scan_next_line;
            } else {
            	FUNC0(SYNCTEX_STATUS_OK);
            }
		} else if (*SYNCTEX_CUR == SYNCTEX_CHAR_BEGIN_SHEET) {
			++SYNCTEX_CUR;
			goto deeper;
            
		} else if (FUNC2(scanner)<SYNCTEX_STATUS_OK) {
            FUNC1("Unexpected end of nested sheet (3).");
            FUNC0(SYNCTEX_STATUS_ERROR);
        }
    }
    FUNC1("Unexpected end of nested sheet (4).");
    FUNC0(SYNCTEX_STATUS_ERROR);
}