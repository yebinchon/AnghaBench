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
typedef  enum nss_status { ____Placeholder_nss_status } nss_status ;

/* Variables and functions */
 int /*<<< orphan*/  getpwent_data ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

enum nss_status FUNC1(int stayopen) {
        return FUNC0(&getpwent_data);
}