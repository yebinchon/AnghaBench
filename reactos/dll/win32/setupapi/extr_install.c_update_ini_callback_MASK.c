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
typedef  int /*<<< orphan*/  section ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int MAX_INF_STRING_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__* FUNC6 (scalar_t__*,char) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC8( HINF hinf, PCWSTR field, void *arg )
{
    INFCONTEXT context;

    BOOL ok = FUNC0( hinf, field, NULL, &context );

    for (; ok; ok = FUNC1( &context, &context ))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];
        WCHAR  filename[MAX_INF_STRING_LENGTH];
        WCHAR  section[MAX_INF_STRING_LENGTH];
        WCHAR  entry[MAX_INF_STRING_LENGTH];
        WCHAR  string[MAX_INF_STRING_LENGTH];
        LPWSTR divider;

        if (!FUNC2( &context, 1, filename,
                                   sizeof(filename)/sizeof(WCHAR), NULL ))
            continue;

        if (!FUNC2( &context, 2, section,
                                   sizeof(section)/sizeof(WCHAR), NULL ))
            continue;

        if (!FUNC2( &context, 4, buffer,
                                   sizeof(buffer)/sizeof(WCHAR), NULL ))
            continue;

        divider = FUNC6(buffer,'=');
        if (divider)
        {
            *divider = 0;
            FUNC7(entry,buffer);
            divider++;
            FUNC7(string,divider);
        }
        else
        {
            FUNC7(entry,buffer);
            string[0]=0;
        }

        FUNC3("Writing %s = %s in %s of file %s\n",FUNC5(entry),
               FUNC5(string),FUNC5(section),FUNC5(filename));
        FUNC4(section,entry,string,filename);

    }
    return TRUE;
}