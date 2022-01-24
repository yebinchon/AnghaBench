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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static bool FUNC3(stream_t *s)
{
    const uint8_t *header;
    if (FUNC2(s, &header, 18) < 18)
        return false;
    if (FUNC1(header, "BM", 2) &&
        FUNC1(header, "BA", 2) &&
        FUNC1(header, "CI", 2) &&
        FUNC1(header, "CP", 2) &&
        FUNC1(header, "IC", 2) &&
        FUNC1(header, "PT", 2))
        return false;
    uint32_t file_size   = FUNC0(&header[2]);
    uint32_t data_offset = FUNC0(&header[10]);
    uint32_t header_size = FUNC0(&header[14]);
    if (file_size != 14 && file_size != 14 + header_size &&
        file_size <= data_offset)
        return false;
    if (data_offset < header_size + 14)
        return false;
    if (header_size != 12 && header_size < 40)
        return false;
    return true;
}