#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  force; } ;
struct TYPE_7__ {int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  s; TYPE_1__ obj; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  ReadDir ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 

int FUNC8(vlc_object_t *p_this)
{
    stream_t *demux = (stream_t *)p_this;

    FUNC0(demux);
    if (!FUNC6(demux, ".conf" ) && !demux->obj.force )
        return VLC_EGENERIC;

    /* Check if this really is a channels file */
    const uint8_t *peek;
    int len = FUNC7(demux->s, &peek, 1023);
    if (len <= 0)
        return VLC_EGENERIC;

    const uint8_t *eol = FUNC3(peek, '\n', len);
    if (eol == NULL)
        return VLC_EGENERIC;
    len = eol - peek;

    char line[len + 1];
    FUNC4(line, peek, len);
    line[len] = '\0';

    input_item_t *item = FUNC1(line);
    if (item == NULL)
        return VLC_EGENERIC;
    FUNC2(item);

    FUNC5(demux, "found valid channels.conf file");
    demux->pf_control = access_vaDirectoryControlHelper;
    demux->pf_readdir = ReadDir;

    return VLC_SUCCESS;
}