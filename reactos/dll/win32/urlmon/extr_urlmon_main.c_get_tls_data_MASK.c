#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ tls_data_t ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tls_cs ; 
 int /*<<< orphan*/  tls_list ; 
 scalar_t__ urlmon_tls ; 

tls_data_t *FUNC9(void)
{
    tls_data_t *data;

    if(urlmon_tls == TLS_OUT_OF_INDEXES) {
        DWORD tls = FUNC3();
        if(tls == TLS_OUT_OF_INDEXES)
            return NULL;

        tls = FUNC1((LONG*)&urlmon_tls, tls, TLS_OUT_OF_INDEXES);
        if(tls != urlmon_tls)
            FUNC4(tls);
    }

    data = FUNC5(urlmon_tls);
    if(!data) {
        data = FUNC7(sizeof(tls_data_t));
        if(!data)
            return NULL;

        FUNC0(&tls_cs);
        FUNC8(&tls_list, &data->entry);
        FUNC2(&tls_cs);

        FUNC6(urlmon_tls, data);
    }

    return data;
}