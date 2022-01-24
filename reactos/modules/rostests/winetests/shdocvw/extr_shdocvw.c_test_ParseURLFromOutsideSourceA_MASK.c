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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int len; int /*<<< orphan*/  newurl; int /*<<< orphan*/  url; } ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 TYPE_1__* ParseURL_table ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    CHAR buffer[INTERNET_MAX_URL_LENGTH];
    DWORD dummy;
    DWORD maxlen;
    DWORD len;
    DWORD res;
    int i;

    if (!&pParseURLFromOutsideSourceA) {
        FUNC5("ParseURLFromOutsideSourceA not found\n");
        return;
    }

    for(i = 0; i < FUNC0(ParseURL_table); i++) {
        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = sizeof(buffer);
        dummy = 0;
        /* on success, string size including terminating 0 is returned for ansi version */
        res = FUNC4(ParseURL_table[i].url, buffer, &len, &dummy);
        /* len does not include the terminating 0, when buffer is large enough */
        FUNC3( res == (ParseURL_table[i].len+1) && len == ParseURL_table[i].len &&
            !FUNC1(buffer, ParseURL_table[i].newurl),
            "#%d: got %d and %d with '%s' (expected %d and %d with '%s')\n",
            i, res, len, buffer, ParseURL_table[i].len+1, ParseURL_table[i].len, ParseURL_table[i].newurl);


        /* use the size test only for the first examples */
        if (i > 4) continue;

        maxlen = len;

        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen + 1;
        dummy = 0;
        res = FUNC4(ParseURL_table[i].url, buffer, &len, &dummy);
        FUNC3( res != 0 && len == ParseURL_table[i].len &&
            !FUNC1(buffer, ParseURL_table[i].newurl),
            "#%d (+1): got %d and %d with '%s' (expected '!=0' and %d with '%s')\n",
            i, res, len, buffer, ParseURL_table[i].len, ParseURL_table[i].newurl);

        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen;
        dummy = 0;
        res = FUNC4(ParseURL_table[i].url, buffer, &len, &dummy);
        /* len includes the terminating 0, when the buffer is too small */
        FUNC3( res == 0 && len == ParseURL_table[i].len + 1,
            "#%d (==): got %d and %d (expected '0' and %d)\n",
            i, res, len, ParseURL_table[i].len + 1);

        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen-1;
        dummy = 0;
        res = FUNC4(ParseURL_table[i].url, buffer, &len, &dummy);
        /* len includes the terminating 0 on XP SP1 and before, when the buffer is too small */
        FUNC3( res == 0 && (len == ParseURL_table[i].len || len == ParseURL_table[i].len + 1),
            "#%d (-1): got %d and %d (expected '0' and %d or %d)\n",
            i, res, len, ParseURL_table[i].len, ParseURL_table[i].len + 1);

        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen+1;
        dummy = 0;
        res = FUNC4(ParseURL_table[i].url, NULL, &len, &dummy);
        /* len does not include the terminating 0, when buffer is NULL */
        FUNC3( res == 0 && len == ParseURL_table[i].len,
            "#%d (buffer): got %d and %d (expected '0' and %d)\n",
            i, res, len, ParseURL_table[i].len);

        if (0) {
            /* that test crash on native shdocvw */
            FUNC4(ParseURL_table[i].url, buffer, NULL, &dummy);
        }

        FUNC2(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen+1;
        dummy = 0;
        res = FUNC4(ParseURL_table[i].url, buffer, &len, NULL);
        FUNC3( res != 0 && len == ParseURL_table[i].len &&
            !FUNC1(buffer, ParseURL_table[i].newurl),
            "#%d (unknown): got %d and %d with '%s' (expected '!=0' and %d with '%s')\n",
            i, res, len, buffer, ParseURL_table[i].len, ParseURL_table[i].newurl);
    }
}