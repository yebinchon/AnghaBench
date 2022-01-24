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
struct TYPE_4__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char const*) ; 
 int FUNC7 (char const*,char*,unsigned int*) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(stream_t *demux, input_item_node_t *subitems)
{
    char *line;

    while ((line = FUNC11(demux->s)) != NULL)
    {
        if (!FUNC0(line))
            goto skip;
        if (!FUNC9(line, "[Reference]"))
            goto skip;

        const char *key = line;
        char *value = FUNC8(line, '=');
        if (value == NULL) {
            FUNC6(demux, "unexpected entry \"%s\"", line);
            goto skip;
        }
        *(value++) = '\0';

        unsigned id;
        if (FUNC7(key, "Ref%u", &id) != 1) {
            FUNC6(demux, "unexpected entry key \"%s\"", key);
            goto skip;
        }

        if (!FUNC10(value, "http://", 7))
            FUNC5(value, "mmsh", 4); /* Force MMSH access/demux */

        input_item_t *item = FUNC2(value, value);
        FUNC4(subitems, item);
        FUNC3(item);
skip:
        FUNC1(line);
    }
    return VLC_SUCCESS;
}