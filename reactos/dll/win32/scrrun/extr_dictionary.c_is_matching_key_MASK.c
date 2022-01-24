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
struct keyitem_pair {scalar_t__ hash; int /*<<< orphan*/  const key; } ;
typedef  int /*<<< orphan*/  dictionary ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static BOOL FUNC2(const dictionary *dict, const struct keyitem_pair *pair, const VARIANT *key, DWORD hash)
{
    if (FUNC0(key) && FUNC0(&pair->key)) {
        if (hash != pair->hash)
            return FALSE;

        return FUNC1(dict, key, &pair->key) == 0;
    }

    if ((FUNC0(key) && !FUNC0(&pair->key)) ||
        (!FUNC0(key) && FUNC0(&pair->key)))
        return FALSE;

    /* for numeric keys only check hash */
    return hash == pair->hash;
}