#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int ssize_t ;
struct TYPE_8__ {float f; char* psz; int /*<<< orphan*/  i; } ;
struct TYPE_7__ {int /*<<< orphan*/  i; } ;
struct TYPE_6__ {int /*<<< orphan*/  i; } ;
struct TYPE_9__ {TYPE_3__ value; TYPE_2__ min; TYPE_1__ max; int /*<<< orphan*/  i_type; scalar_t__ b_removed; scalar_t__ b_unsaveable; } ;
typedef  TYPE_4__ module_config_t ;
typedef  scalar_t__ locale_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONFIG_ITEM_BOOL 130 
#define  CONFIG_ITEM_FLOAT 129 
#define  CONFIG_ITEM_INTEGER 128 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  LC_NUMERIC_MASK ; 
 int VLC_EGENERIC ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  config_lock ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char,int) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 char* FUNC17 (char*,char) ; 
 char* FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 

int FUNC24( vlc_object_t *p_this )
{
    FILE *file;

    file = FUNC4 (p_this);
    if (file == NULL)
        return VLC_EGENERIC;

    /* Skip UTF-8 Byte Order Mark if present */
    char bom[3];
    if (FUNC7 (bom, 1, 3, file) != 3 || FUNC12 (bom, "\xEF\xBB\xBF", 3))
        FUNC16 (file); /* no BOM, rewind */

    char *line = NULL;
    size_t bufsize;
    ssize_t linelen;

    /* Ensure consistent number formatting... */
    locale_t loc = FUNC15 (LC_NUMERIC_MASK, "C", NULL);
    locale_t baseloc = FUNC19 (loc);

    FUNC21 (&config_lock);
    while ((linelen = FUNC10 (&line, &bufsize, file)) != -1)
    {
        line[linelen - 1] = '\0'; /* trim newline */

        /* Ignore comments, section and empty lines */
        if (FUNC11 ("#[", line[0], 3) != NULL)
            continue;

        /* look for option name */
        const char *psz_option_name = line;

        char *ptr = FUNC17 (line, '=');
        if (ptr == NULL)
            continue; /* syntax error */
        *ptr = '\0';

        module_config_t *item = FUNC3(psz_option_name);
        if (item == NULL)
            continue;

        /* Reject values of options that are unsaveable */
        if (item->b_unsaveable)
            continue;
        /* Ignore options that are obsolete */
        if (item->b_removed)
            continue;

        const char *psz_option_value = ptr + 1;
        switch (FUNC0(item->i_type))
        {
            case CONFIG_ITEM_BOOL:
            case CONFIG_ITEM_INTEGER:
            {
                int64_t l;

                errno = 0;
                l = FUNC23 (psz_option_value);
                if ((l > item->max.i) || (l < item->min.i))
                    errno = ERANGE;
                if (errno)
                    FUNC14 (p_this, "Integer value (%s) for %s: %s",
                              psz_option_value, psz_option_name,
                              FUNC22(errno));
                else
                    item->value.i = l;
                break;
            }

            case CONFIG_ITEM_FLOAT:
                if (!*psz_option_value)
                    break;                    /* ignore empty option */
                item->value.f = (float)FUNC1 (psz_option_value);
                break;

            default:
                FUNC8 (item->value.psz);
                item->value.psz = FUNC18 (psz_option_value);
                break;
        }
    }
    FUNC20 (&config_lock);
    FUNC8 (line);

    if (FUNC6 (file))
    {
        FUNC13 (p_this, "error reading configuration: %s",
                 FUNC22(errno));
        FUNC2 (file);
    }
    FUNC5 (file);

    if (loc != (locale_t)0)
    {
        FUNC19 (baseloc);
        FUNC9 (loc);
    }
    return 0;
}