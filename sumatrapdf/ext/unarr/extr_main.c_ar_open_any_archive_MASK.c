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
typedef  int /*<<< orphan*/  ar_stream ;
typedef  int /*<<< orphan*/  ar_archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

ar_archive *FUNC5(ar_stream *stream, const char *fileext)
{
    ar_archive *ar = FUNC1(stream);
    if (!ar)
        ar = FUNC3(stream, fileext && (FUNC4(fileext, ".xps") == 0 || FUNC4(fileext, ".epub") == 0));
    if (!ar)
        ar = FUNC0(stream);
    if (!ar)
        ar = FUNC2(stream);
    return ar;
}