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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  QUERY_SERVICE_CONFIGW ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVICE_QUERY_CONFIG ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static QUERY_SERVICE_CONFIGW *FUNC6( SC_HANDLE manager, const WCHAR *name )
{
    QUERY_SERVICE_CONFIGW *config = NULL;
    SC_HANDLE service;
    DWORD size;

    if (!(service = FUNC2( manager, name, SERVICE_QUERY_CONFIG ))) return NULL;
    FUNC3( service, NULL, 0, &size );
    if (FUNC1() != ERROR_INSUFFICIENT_BUFFER) goto done;
    if (!(config = FUNC4( size ))) goto done;
    if (FUNC3( service, config, size, &size )) goto done;
    FUNC5( config );
    config = NULL;

done:
    FUNC0( service );
    return config;
}