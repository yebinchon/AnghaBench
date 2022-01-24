#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int before; int len; int under; int after; } ;
typedef  TYPE_1__ ellipsis_data ;
typedef  char WCHAR ;
struct TYPE_8__ {int cx; } ;
typedef  TYPE_2__ SIZE ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BACK_SLASH ; 
 char* ELLIPSISW ; 
 int /*<<< orphan*/  FORWARD_SLASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (HDC hdc, WCHAR *str, unsigned int max_len,
                                unsigned int *len_str, int width, SIZE *size,
                                WCHAR *modstr, ellipsis_data *pellip)
{
    int len_ellipsis;
    int len_trailing;
    int len_under;
    WCHAR *lastBkSlash, *lastFwdSlash, *lastSlash;
    len_ellipsis = FUNC5 (ELLIPSISW);
    if (!max_len) return;
    if (len_ellipsis >= max_len) len_ellipsis = max_len - 1;
    if (*len_str + len_ellipsis >= max_len)
        *len_str = max_len - len_ellipsis-1;
        /* Hopefully this will never happen, otherwise it would probably lose
         * the wrong character
         */
    str[*len_str] = '\0'; /* to simplify things */
#ifdef _WIN32K_
    lastBkSlash  = wcsrchr (str, BACK_SLASH);
    lastFwdSlash = wcsrchr (str, FORWARD_SLASH);
#else
    lastBkSlash  = FUNC6 (str, BACK_SLASH);
    lastFwdSlash = FUNC6 (str, FORWARD_SLASH);
#endif
    lastSlash = lastBkSlash > lastFwdSlash ? lastBkSlash : lastFwdSlash;
    if (!lastSlash) lastSlash = str;
    len_trailing = *len_str - (lastSlash - str);

    /* overlap-safe movement to the right */
    FUNC4 (lastSlash+len_ellipsis, lastSlash, len_trailing * sizeof(WCHAR));
    FUNC3 (lastSlash, ELLIPSISW, len_ellipsis*sizeof(WCHAR));
    len_trailing += len_ellipsis;
    /* From this point on lastSlash actually points to the ellipsis in front
     * of the last slash and len_trailing includes the ellipsis
     */

    len_under = 0;
    for ( ; ; )
    {
#ifdef _WIN32K_
        if (!GreGetTextExtentExW (hdc, str, *len_str + len_ellipsis, width,
                                    NULL, NULL, size, 0)) break;
#else
        if (!FUNC0 (hdc, str, *len_str + len_ellipsis, width,
                                    NULL, NULL, size)) break;
#endif
        if (lastSlash == str || size->cx <= width) break;

        /* overlap-safe movement to the left */
        FUNC4 (lastSlash-1, lastSlash, len_trailing * sizeof(WCHAR));
        lastSlash--;
        len_under++;

        FUNC2 (*len_str);
        (*len_str)--;
    }
    pellip->before = lastSlash-str;
    pellip->len = len_ellipsis;
    pellip->under = len_under;
    pellip->after = len_trailing - len_ellipsis;
    *len_str += len_ellipsis;

    if (modstr)
    {
        FUNC3(modstr, str, *len_str * sizeof(WCHAR));
        modstr[*len_str] = '\0';
    }
}