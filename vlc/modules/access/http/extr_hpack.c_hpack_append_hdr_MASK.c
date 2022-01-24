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
struct hpack_decoder {char** table; int entries; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpack_decoder*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 char** FUNC4 (char**,int) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct hpack_decoder *dec,
                            const char *name, const char *value)
{
    size_t namelen = FUNC5(name), valuelen = FUNC5(value);
    char *entry = FUNC2(namelen + valuelen + 2);
    if (entry == NULL)
        return -1;
    FUNC3(entry, name, namelen + 1);
    FUNC3(entry + namelen + 1, value, valuelen + 1);

    char **newtab = FUNC4(dec->table,
                            sizeof (dec->table[0]) * (dec->entries + 1));
    if (newtab == NULL)
    {
        FUNC0(entry);
        return -1;
    }

    dec->table = newtab;
    dec->table[dec->entries] = entry;
    dec->entries++;
    dec->size += 32 + namelen + valuelen;

    FUNC1(dec);
    return 0;
}