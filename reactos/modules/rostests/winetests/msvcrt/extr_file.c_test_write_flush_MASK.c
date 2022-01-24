#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iobuf ;
struct TYPE_6__ {int _bufsiz; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  _IOFBF ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    char iobuf[1024];
    char *tempf;
    FILE *file;

    tempf = FUNC0(".","wne");
    file = FUNC2(tempf, "wb+");
    FUNC4(file != NULL, "unable to create test file\n");
    iobuf[0] = 0;
    FUNC4(file->_bufsiz == 4096, "incorrect default buffer size: %d\n", file->_bufsiz);
    FUNC6(file, file->_bufsiz);
    FUNC5(file, iobuf, _IOFBF, sizeof(iobuf));
    FUNC6(file, sizeof(iobuf));
    FUNC1(file);
    FUNC7(tempf);
    FUNC3(tempf);
}