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
 int /*<<< orphan*/  FUNC0 (char) ; 
 size_t FUNC1 (char*,size_t,char*,...) ; 

__attribute__((used)) static size_t FUNC2(char *buf, size_t size, char byte) {
    size_t len = 0;

    switch(byte) {
    case '\\':
    case '"':
        len = FUNC1(buf,size,"\"\\%c\"",byte);
        break;
    case '\n': len = FUNC1(buf,size,"\"\\n\""); break;
    case '\r': len = FUNC1(buf,size,"\"\\r\""); break;
    case '\t': len = FUNC1(buf,size,"\"\\t\""); break;
    case '\a': len = FUNC1(buf,size,"\"\\a\""); break;
    case '\b': len = FUNC1(buf,size,"\"\\b\""); break;
    default:
        if (FUNC0(byte))
            len = FUNC1(buf,size,"\"%c\"",byte);
        else
            len = FUNC1(buf,size,"\"\\x%02x\"",(unsigned char)byte);
        break;
    }

    return len;
}