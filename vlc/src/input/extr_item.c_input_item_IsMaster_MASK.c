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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const*) ; 
#define  MASTER_EXTENSIONS 128 
 int /*<<< orphan*/ * FUNC1 (char const*,char const* const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bsearch_strcmp_cb ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static bool FUNC3(const char *psz_filename)
{
    static const char *const ppsz_master_exts[] = { MASTER_EXTENSIONS };

    const char *psz_ext = FUNC2(psz_filename, '.');
    if (psz_ext == NULL || *(++psz_ext) == '\0')
        return false;

    return FUNC1(psz_ext, ppsz_master_exts, FUNC0(ppsz_master_exts),
                   sizeof(const char *), bsearch_strcmp_cb) != NULL;
}