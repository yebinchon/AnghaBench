#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ns; int /*<<< orphan*/  nsdef; } ;
typedef  TYPE_1__ xmlreader ;
typedef  int /*<<< orphan*/  strval ;
struct ns {int /*<<< orphan*/  entry; int /*<<< orphan*/ * element; int /*<<< orphan*/  prefix; int /*<<< orphan*/  uri; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ns* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ns*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader, const strval *prefix, const strval *uri, BOOL def)
{
    struct ns *ns;
    HRESULT hr;

    ns = FUNC3(reader, sizeof(*ns));
    if (!ns) return E_OUTOFMEMORY;

    if (def)
        FUNC2(&ns->prefix, 0, sizeof(ns->prefix));
    else {
        hr = FUNC6(reader, prefix, &ns->prefix);
        if (FUNC0(hr)) {
            FUNC4(reader, ns);
            return hr;
        }
    }

    hr = FUNC6(reader, uri, &ns->uri);
    if (FUNC0(hr)) {
        FUNC5(reader, &ns->prefix);
        FUNC4(reader, ns);
        return hr;
    }

    ns->element = NULL;
    FUNC1(def ? &reader->nsdef : &reader->ns, &ns->entry);
    return hr;
}