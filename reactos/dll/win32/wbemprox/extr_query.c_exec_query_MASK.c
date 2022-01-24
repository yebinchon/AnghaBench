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
struct query {int /*<<< orphan*/  view; int /*<<< orphan*/  mem; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (struct query*,void**) ; 
 scalar_t__ S_OK ; 
 struct query* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct query*) ; 

HRESULT FUNC5( const WCHAR *str, IEnumWbemClassObject **result )
{
    HRESULT hr;
    struct query *query;

    *result = NULL;
    if (!(query = FUNC1())) return E_OUTOFMEMORY;
    hr = FUNC3( str, &query->view, &query->mem );
    if (hr != S_OK) goto done;
    hr = FUNC2( query->view );
    if (hr != S_OK) goto done;
    hr = FUNC0( query, (void **)result );

done:
    FUNC4( query );
    return hr;
}