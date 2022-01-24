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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  char* INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  char* BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 char* FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 scalar_t__ REG_SZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

BOOL FUNC8(char* key)
{
    INT driver_count = 0;
    INT driver_index = 0;
    HKEY drivers_key;

    DWORD value_name_length = 256;
    char value_name[256];

    DWORD value_data_length = 256;
    char value_data[256];

    char wavemapper[256] = { 0 };
    char midimapper[256] = { 0 };

    DWORD value_type;

    if ( FUNC2(HKEY_LOCAL_MACHINE, key, &drivers_key) != ERROR_SUCCESS )
    {
        FUNC3("ERROR: Could not open: HKEY_LOCAL_MACHINE\\%s\n", key);
        return 0;
    }

    while ( FUNC1(drivers_key,
                         driver_index,
                         value_name,
                         &value_name_length,
                         NULL,
                         &value_type,
                         (LPBYTE)value_data,
                         &value_data_length) == ERROR_SUCCESS )
    {
        BOOL valid_driver = FALSE;
        BOOL is_mapper = FALSE;

        if ( value_type == REG_SZ )
        {
            /* We look for mappers first so they don't match
               something else later on! */

            if ( ! FUNC7("wavemapper", value_name) )
            {
                FUNC3("Found a Wave-mapper: %s\n", value_data);
                /* Delay loading Wave mapper driver */
                FUNC6(wavemapper, value_data);
                is_mapper = TRUE;
                driver_count ++;
            }
            else if ( ! FUNC7("midimapper", value_name) )
            {
                FUNC3("Found a MIDI-mapper: %s\n", value_data);
                /* Delay loading MIDI mapper driver */
                FUNC6(midimapper, value_data);
                is_mapper = TRUE;
                driver_count ++;
            }
            else if ( ! FUNC4("wave", value_name, 4) )
            {
                FUNC3("Found a Wave driver: %s\n", value_data);
                valid_driver = TRUE;
                driver_count ++;
            }
            else if ( ! FUNC4("midi", value_name, 4) )
            {
                FUNC3("Found a MIDI driver: %s\n", value_data);
                valid_driver = TRUE;
                driver_count ++;
            }
            else if ( ! FUNC4("mixer", value_name, 5) )
            {
                FUNC3("Found a mixer driver: %s\n", value_data);
                valid_driver = TRUE;
                driver_count ++;
            }
            else if ( ! FUNC4("aux", value_name, 4) )
            {
                FUNC3("Found an aux driver: %s\n", value_data);
                valid_driver = TRUE;
                driver_count ++;
            }
            else
            {
                FUNC3("Not supported: %s\n", value_data);
            }

            /* If we have a valid driver now, we get it "installed" in
               winmm itself so it can be used */

            if ( valid_driver )
            {
                if ( ! FUNC0(value_name, value_data, is_mapper) )
                {
                    FUNC3("FAILED when initializing %s\n", value_data);
                }
            }
        }
        else
        {
            FUNC3("Invalid data format\n");
        }

        /* Reinitialize */
        value_name_length = 256;
        value_data_length = 256;
        FUNC5(value_name, 0, value_name_length);
        FUNC5(value_data, 0, value_data_length);

        driver_index ++;
    }

    /* Finally load mapper drivers, since they expect device drivers already loaded */
    if (*wavemapper)
    {
        if (!FUNC0("wavemapper", wavemapper, TRUE))
        {
            FUNC3("FAILED when initializing %s\n", wavemapper);
        }
    }

    if (*midimapper)
    {
        if (!FUNC0("midimapper", midimapper, TRUE))
        {
            FUNC3("FAILED when initializing %s\n", midimapper);
        }
    }

    FUNC3("Found a total of %d drivers\n", driver_count);

    return driver_count;
}