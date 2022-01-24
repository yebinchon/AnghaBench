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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int STRING_LENGTH ; 
 int TOX_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 size_t FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,size_t*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(Tox *m, int groupnumber)
{
    int num = FUNC7(m, groupnumber);

    if (num < 0)
        return;

    if (!num) {
        FUNC1("[g]+ no peers left in group.");
        return;
    }

    uint8_t names[num][TOX_MAX_NAME_LENGTH];
    uint16_t lengths[num];
    FUNC6(m, groupnumber, names, lengths, num);
    int i;
    char numstr[16];
    char header[] = "[g]+ ";
    size_t header_len = FUNC5(header);
    char msg[STRING_LENGTH];
    FUNC4(msg, header);
    size_t len_total = header_len;

    for (i = 0; i < num; ++i) {
        size_t len_name = lengths[i];
        size_t len_num = FUNC3(numstr, "%i: ", i);

        if (len_num + len_name + len_total + 3 >= STRING_LENGTH) {
            FUNC2(msg, 1);

            FUNC4(msg, header);
            len_total = header_len;
        }

        FUNC4(msg + len_total, numstr);
        len_total += len_num;
        FUNC0(msg + len_total, (char *)names[i], len_name);
        len_total += len_name;

        if (i < num - 1) {
            FUNC4(msg + len_total, "|");
            len_total++;
        }
    }

    FUNC2(msg, 1);
}