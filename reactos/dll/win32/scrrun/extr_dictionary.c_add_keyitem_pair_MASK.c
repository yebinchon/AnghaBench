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
struct list {int /*<<< orphan*/  next; } ;
struct keyitem_pair {int /*<<< orphan*/  item; int /*<<< orphan*/  key; int /*<<< orphan*/  entry; int /*<<< orphan*/  bucket; int /*<<< orphan*/  hash; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; struct list pairs; int /*<<< orphan*/  IDictionary_iface; } ;
typedef  TYPE_1__ dictionary ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct list* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct keyitem_pair* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct keyitem_pair*) ; 
 int /*<<< orphan*/  FUNC9 (struct list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct list*) ; 

__attribute__((used)) static HRESULT FUNC11(dictionary *dict, VARIANT *key, VARIANT *item)
{
    struct keyitem_pair *pair;
    struct list *head;
    VARIANT hash;
    HRESULT hr;

    hr = FUNC1(&dict->IDictionary_iface, key, &hash);
    if (FUNC0(hr))
        return hr;

    pair = FUNC7(sizeof(*pair));
    if (!pair)
        return E_OUTOFMEMORY;

    pair->hash = FUNC2(&hash);
    FUNC5(&pair->key);
    FUNC5(&pair->item);

    hr = FUNC4(&pair->key, key);
    if (FUNC0(hr))
        goto failed;

    hr = FUNC4(&pair->item, item);
    if (FUNC0(hr))
        goto failed;

    head = FUNC6(dict, pair->hash);
    if (!head->next)
        /* this only happens once per bucket */
        FUNC10(head);

    /* link to bucket list and to full list */
    FUNC9(head, &pair->bucket);
    FUNC9(&dict->pairs, &pair->entry);
    dict->count++;
    return S_OK;

failed:
    FUNC3(&pair->key);
    FUNC3(&pair->item);
    FUNC8(pair);
    return hr;
}