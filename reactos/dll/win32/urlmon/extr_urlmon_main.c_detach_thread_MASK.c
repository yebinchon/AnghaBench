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
struct TYPE_4__ {scalar_t__ notif_hwnd; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ tls_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tls_cs ; 
 scalar_t__ urlmon_tls ; 

__attribute__((used)) static void FUNC7(void)
{
    tls_data_t *data;

    if(urlmon_tls == TLS_OUT_OF_INDEXES)
        return;

    data = FUNC3(urlmon_tls);
    if(!data)
        return;

    FUNC1(&tls_cs);
    FUNC6(&data->entry);
    FUNC2(&tls_cs);

    if(data->notif_hwnd) {
        FUNC4("notif_hwnd not destroyed\n");
        FUNC0(data->notif_hwnd);
    }

    FUNC5(data);
}