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
struct TYPE_2__ {int /*<<< orphan*/  total; int /*<<< orphan*/  skipped; int /*<<< orphan*/  translated; int /*<<< orphan*/  undo; int /*<<< orphan*/  redo; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 int NAMESIZE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_Mark ; 
 scalar_t__ opt_mark ; 
 scalar_t__ opt_redo ; 
 scalar_t__ opt_undo ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*,char*,char*,...) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 TYPE_1__ summ ; 
 int FUNC7 (char*,unsigned int,char*) ; 

__attribute__((used)) static void
FUNC8(FILE *outFile, char *Line, char *path, char *LineOut)
{
    unsigned int offset;
    int cnt, res;
    char *sep, *tail, *mark, *s;
    unsigned char ch;

    if (!*Line)
        return;

    res = 1;
    mark = "";
    s = FUNC3(Line);
    if (opt_undo)
    {
        /* Strip all lines added by this tool: */
        char buf[NAMESIZE];
        if (FUNC4(s, "| %s", buf) == 1)
            if (buf[0] == '0' || FUNC6(buf, "----") == 0 || FUNC6(buf, "L2L-") == 0 || FUNC6(buf, "S---") == 0 || FUNC6(buf, "R---") == 0 || FUNC0(buf))
                res = 0;
    }

    sep = FUNC5(s, ':');
    if (sep)
    {
        *sep = ' ';
        cnt = FUNC4(s, "<%s %x%c", path, &offset, &ch);
        if (opt_undo)
        {
            if (cnt == 3 && ch == ' ')
            {
                tail = FUNC5(s, '>');
                tail = tail ? tail - 1 : tail;
                if (tail && tail[0] == ')' && tail[1] == '>')
                {
                    res = 0;
                    tail += 2;
                    mark = opt_mark ? "* " : "";
                    if (opt_redo && !(res = FUNC7(path, offset, LineOut)))
                    {
                        FUNC1(outFile, "%s<%s:%x (%s)>%s", mark, path, offset, LineOut, tail);
                        summ.redo++;
                    }
                    else
                    {
                        FUNC1(outFile, "%s<%s:%x>%s", mark, path, offset, tail);
                        summ.undo++;
                    }
                }
                else
                {
                    mark = opt_Mark ? "? " : "";
                    summ.skipped++;
                }
                summ.total++;
            }
        }

        if (!opt_undo || opt_redo)
        {
            if (cnt == 3 && ch == '>')
            {
                tail = FUNC5(s, '>') + 1;
                if (!(res = FUNC7(path, offset, LineOut)))
                {
                    mark = opt_mark ? "* " : "";
                    FUNC1(outFile, "%s<%s:%x (%s)>%s", mark, path, offset, LineOut, tail);
                    summ.translated++;
                }
                else
                {
                    mark = opt_Mark ? "? " : "";
                    summ.skipped++;
                }
                summ.total++;
            }
        }
    }
    if (res)
    {
        if (sep)
            *sep = ':';  // restore because not translated
        FUNC1(outFile, "%s%s", mark, s);
    }
    FUNC2(Line, '\0', LINESIZE);  // flushed
}