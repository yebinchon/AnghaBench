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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  istream_t ;
struct TYPE_3__ {int /*<<< orphan*/  content_size; int /*<<< orphan*/  content; } ;
typedef  TYPE_1__ dictionary_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(dictionary_t *const dict,
                                    istream_t *const in) {
    // Copy in the content
    dict->content_size = FUNC2(in);
    dict->content = FUNC3(dict->content_size);
    if (!dict->content) {
        FUNC0();
    }

    const u8 *const content = FUNC1(in, dict->content_size);

    FUNC4(dict->content, content, dict->content_size);
}