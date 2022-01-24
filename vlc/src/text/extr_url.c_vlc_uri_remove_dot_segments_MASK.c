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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (char*,char,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC6(char *str)
{
    char *input = str, *output = str;

    while (input[0] != '\0')
    {
        FUNC0(output <= input);

        if (FUNC5(input, "../", 3) == 0)
        {
            input += 3;
            continue;
        }
        if (FUNC5(input, "./", 2) == 0)
        {
            input += 2;
            continue;
        }
        if (FUNC5(input, "/./", 3) == 0)
        {
            input += 2;
            continue;
        }
        if (FUNC3(input, "/.") == 0)
        {
            input[1] = '\0';
            continue;
        }
        if (FUNC5(input, "/../", 4) == 0)
        {
            input += 3;
            output = FUNC2(str, '/', output - str);
            if (output == NULL)
                output = str;
            continue;
        }
        if (FUNC3(input, "/..") == 0)
        {
            input[1] = '\0';
            output = FUNC2(str, '/', output - str);
            if (output == NULL)
                output = str;
            continue;
        }
        if (FUNC3(input, ".") == 0)
        {
            input++;
            continue;
        }
        if (FUNC3(input, "..") == 0)
        {
            input += 2;
            continue;
        }

        if (input[0] == '/')
            *(output++) = *(input++);

        size_t len = FUNC4(input, "/");

        if (input != output)
            FUNC1(output, input, len);

        input += len;
        output += len;
    }

    output[0] = '\0';
    return str;
}