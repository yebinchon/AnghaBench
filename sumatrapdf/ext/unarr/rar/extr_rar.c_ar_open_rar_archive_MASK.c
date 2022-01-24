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
typedef  int /*<<< orphan*/  signature ;
typedef  int /*<<< orphan*/  ar_stream ;
typedef  int /*<<< orphan*/  ar_archive_rar ;
typedef  int /*<<< orphan*/  ar_archive ;

/* Variables and functions */
 int FILE_SIGNATURE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  rar_close ; 
 int /*<<< orphan*/  rar_get_name ; 
 int /*<<< orphan*/  rar_parse_entry ; 
 int /*<<< orphan*/  rar_uncompress ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

ar_archive *FUNC5(ar_stream *stream)
{
    char signature[FILE_SIGNATURE_SIZE];
    if (!FUNC2(stream, 0, SEEK_SET))
        return NULL;
    if (FUNC1(stream, signature, sizeof(signature)) != sizeof(signature))
        return NULL;
    if (FUNC3(signature, "Rar!\x1A\x07\x00", sizeof(signature)) != 0) {
        if (FUNC3(signature, "Rar!\x1A\x07\x01", sizeof(signature)) == 0)
            FUNC4("RAR 5 format isn't supported");
        else if (FUNC3(signature, "RE~^", 4) == 0)
            FUNC4("Ancient RAR format isn't supported");
        else if (FUNC3(signature, "MZ", 2) == 0 || FUNC3(signature, "\x7F\x45LF", 4) == 0)
            FUNC4("SFX archives aren't supported");
        return NULL;
    }

    return FUNC0(stream, sizeof(ar_archive_rar), rar_close, rar_parse_entry, rar_get_name, rar_uncompress, NULL, FILE_SIGNATURE_SIZE);
}