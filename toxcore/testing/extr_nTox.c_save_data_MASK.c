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
typedef  int /*<<< orphan*/  Tox ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  data_file_name ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(Tox *m)
{
    FILE *data_file = FUNC1(data_file_name, "w");

    if (!data_file) {
        FUNC4("[!] load_key");
        return 0;
    }

    int res = 1;
    size_t size = FUNC6(m);
    uint8_t data[size];
    FUNC5(m, data);

    if (FUNC3(data, sizeof(uint8_t), size, data_file) != size) {
        FUNC2("[!] could not write data file (1)!", stderr);
        res = 0;
    }

    if (FUNC0(data_file) < 0) {
        FUNC4("[!] could not write data file (2)");
        res = 0;
    }

    return res;
}