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
struct path {int /*<<< orphan*/  class; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (struct path*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,struct path**) ; 

HRESULT FUNC5( const WCHAR *object_path, IWbemClassObject **obj )
{
    IEnumWbemClassObject *iter;
    struct path *path;
    HRESULT hr;

    hr = FUNC4( object_path, &path );
    if (hr != S_OK) return hr;

    hr = FUNC2( path, &iter );
    if (hr != S_OK)
    {
        FUNC3( path );
        return hr;
    }
    hr = FUNC1( path->class, iter, 0, NULL, obj );
    FUNC0( iter );
    FUNC3( path );
    return hr;
}