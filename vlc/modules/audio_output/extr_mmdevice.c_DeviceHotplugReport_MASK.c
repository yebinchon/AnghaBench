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
typedef  int /*<<< orphan*/  audio_output_t ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IMMDevice ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(audio_output_t *aout, LPCWSTR wid,
                               IMMDevice *dev)
{
    char *id = FUNC1(wid);
    if (!id)
        return VLC_EGENERIC;

    char *name = FUNC0(dev);
    if (name == NULL)
        name = id;

    FUNC2(aout, id, name);

    FUNC3(id);
    if (id != name)
        FUNC3(name);
    return VLC_SUCCESS;
}