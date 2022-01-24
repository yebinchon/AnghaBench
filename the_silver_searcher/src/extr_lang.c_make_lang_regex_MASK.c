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
 size_t SINGLE_EXT_LEN ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

char *FUNC4(char *ext_array, size_t num_exts) {
    int regex_capacity = 100;
    char *regex = FUNC0(regex_capacity);
    int regex_length = 3;
    int subsequent = 0;
    char *extension;
    size_t i;

    FUNC2(regex, "\\.(");

    for (i = 0; i < num_exts; ++i) {
        extension = ext_array + i * SINGLE_EXT_LEN;
        int extension_length = FUNC3(extension);
        while (regex_length + extension_length + 3 + subsequent > regex_capacity) {
            regex_capacity *= 2;
            regex = FUNC1(regex, regex_capacity);
        }
        if (subsequent) {
            regex[regex_length++] = '|';
        } else {
            subsequent = 1;
        }
        FUNC2(regex + regex_length, extension);
        regex_length += extension_length;
    }

    regex[regex_length++] = ')';
    regex[regex_length++] = '$';
    regex[regex_length++] = 0;
    return regex;
}