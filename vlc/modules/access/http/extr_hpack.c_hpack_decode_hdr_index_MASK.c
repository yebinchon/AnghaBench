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
struct hpack_decoder {int dummy; } ;
typedef  scalar_t__ int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct hpack_decoder*,char*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/  const**,size_t*) ; 
 char* FUNC3 (int /*<<< orphan*/  const**,size_t*) ; 
 char* FUNC4 (struct hpack_decoder*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct hpack_decoder *dec,
                                  const uint8_t **restrict datap,
                                  size_t *restrict lengthp,
                                  char **restrict namep,
                                  char **restrict valuep)
{
    int_fast32_t idx = FUNC2(6, datap, lengthp);
    if (idx < 0)
        return -1;

    char *name;

    if (idx != 0)
        name = FUNC4(dec, idx);
    else
        name = FUNC3(datap, lengthp);
    if (name == NULL)
        return -1;

    char *value = FUNC3(datap, lengthp);
    if (value == NULL)
    {
        FUNC0(name);
        return -1;
    }

    if (FUNC1(dec, name, value))
    {
        FUNC0(value);
        FUNC0(name);
        return -1;
    }

    *namep = name;
    *valuep = value;
    return 0;
}