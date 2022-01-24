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
typedef  int /*<<< orphan*/  nstemplate ;
typedef  int /*<<< orphan*/  nsIPrintSettings ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  scalar_t__ PRUnichar ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static void FUNC4(nsIPrintSettings *settings, LPCWSTR template, BOOL head)
{
    PRUnichar nstemplate[200]; /* FIXME: Use dynamic allocation */
    PRUnichar *p = nstemplate;
    LPCWSTR ptr=template;
    int pos=0;

    while(*ptr) {
        if(*ptr != '&') {
            *p++ = *ptr++;
            continue;
        }

        switch(*++ptr) {
        case '&':
            *p++ = '&';
            *p++ = '&';
            ptr++;
            break;
        case 'b': /* change align */
            ptr++;
            *p = 0;
            FUNC2(settings, nstemplate, head, pos);
            p = nstemplate;
            pos++;
            break;
        case 'd': { /* short date */
            SYSTEMTIME systime;
            FUNC1(&systime);
            FUNC0(LOCALE_SYSTEM_DEFAULT, 0, &systime, NULL, p,
                    sizeof(nstemplate)-(p-nstemplate)*sizeof(WCHAR));
            p += FUNC3(p);
            ptr++;
            break;
        }
        case 'p': /* page number */
            *p++ = '&';
            *p++ = 'P';
            ptr++;
            break;
        case 'P': /* page count */
            *p++ = '?'; /* FIXME */
            ptr++;
            break;
        case 'u':
            *p++ = '&';
            *p++ = 'U';
            ptr++;
            break;
        case 'w':
            /* FIXME: set window title */
            ptr++;
            break;
        default:
            *p++ = '&';
            *p++ = *ptr++;
        }
    }

    *p = 0;
    FUNC2(settings, nstemplate, head, pos);

    while(++pos < 3)
        FUNC2(settings, p, head, pos);
}