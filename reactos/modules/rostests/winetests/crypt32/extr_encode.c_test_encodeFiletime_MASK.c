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
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PKCS_UTC_TIME ; 
 int /*<<< orphan*/  X509_CHOICE_OF_TIME ; 
 int /*<<< orphan*/  szOID_RSA_signingTime ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * times ; 

__attribute__((used)) static void FUNC2(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < FUNC0(times); i++)
    {
        FUNC1(dwEncoding, X509_CHOICE_OF_TIME, &times[i]);
        FUNC1(dwEncoding, PKCS_UTC_TIME, &times[i]);
        FUNC1(dwEncoding, szOID_RSA_signingTime, &times[i]);
    }
}