#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* Buffer; int Length; int MaximumLength; } ;
typedef  TYPE_1__ STRING ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,TYPE_1__*) ; 

void
FUNC4()
{
    char buffer[128];
    STRING string;
    int result;

    string.Buffer = "Test\0Hallo";
    string.Length = 4;
    string.MaximumLength = 5;

    FUNC3(buffer, "%Z", &string);
    FUNC2(buffer, "Test");

    string.Length = 8;
    FUNC3(buffer, "%Z", &string);
    FUNC2(buffer, "Test");

    string.Length = 3;
    FUNC3(buffer, "%Z", &string);
    FUNC2(buffer, "Tes");

    string.Buffer = 0;
    FUNC3(buffer, "%Z", &string);
    FUNC2(buffer, "(null)");

    FUNC3(buffer, "%Z", 0);
    FUNC2(buffer, "(null)");

    string.Buffer = (char*)L"Test\0Hallo";
    string.Length = 8;
    string.MaximumLength = 10;


    string.Buffer = (char*)L"test";
    string.Length = 12;
    string.MaximumLength = 15;
    result = FUNC0(buffer, 127, "%Z %u%c", &string, 1, 0);
    FUNC1(result, 15);

}