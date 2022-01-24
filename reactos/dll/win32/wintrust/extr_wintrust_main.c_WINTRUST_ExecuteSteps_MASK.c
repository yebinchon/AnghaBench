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
struct wintrust_step {size_t (* func ) (TYPE_1__*) ;size_t error_index; } ;
struct TYPE_4__ {size_t* padwTrustStepErrors; } ;
typedef  size_t DWORD ;
typedef  TYPE_1__ CRYPT_PROVIDER_DATA ;

/* Variables and functions */
 size_t ERROR_SUCCESS ; 
 size_t FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static DWORD FUNC1(const struct wintrust_step *steps,
 DWORD numSteps, CRYPT_PROVIDER_DATA *provData)
{
    DWORD i, err = ERROR_SUCCESS;

    for (i = 0; !err && i < numSteps; i++)
    {
        err = steps[i].func(provData);
        if (err)
            err = provData->padwTrustStepErrors[steps[i].error_index];
    }
    return err;
}