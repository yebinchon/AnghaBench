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
struct Tox_Options {size_t savedata_length; int /*<<< orphan*/ * savedata_data; int /*<<< orphan*/  savedata_type; } ;
typedef  int /*<<< orphan*/  Tox ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  TOX_SAVEDATA_TYPE_TOX_SAVE ; 
 int /*<<< orphan*/  data_file_name ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC8 (struct Tox_Options*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct Tox_Options*) ; 

__attribute__((used)) static Tox *FUNC10()
{
    FILE *data_file = FUNC1(data_file_name, "r");

    if (data_file) {
        FUNC4(data_file, 0, SEEK_END);
        size_t size = FUNC5(data_file);
        FUNC7(data_file);

        uint8_t data[size];

        if (FUNC3(data, sizeof(uint8_t), size, data_file) != size) {
            FUNC2("[!] could not read data file!\n", stderr);
            FUNC0(data_file);
            return 0;
        }

        struct Tox_Options options;

        FUNC9(&options);

        options.savedata_type = TOX_SAVEDATA_TYPE_TOX_SAVE;

        options.savedata_data = data;

        options.savedata_length = size;

        Tox *m = FUNC8(&options, NULL);

        if (FUNC0(data_file) < 0) {
            FUNC6("[!] fclose failed");
            /* we got it open and the expected data read... let it be ok */
            /* return 0; */
        }

        return m;
    }

    return FUNC8(NULL, NULL);
}