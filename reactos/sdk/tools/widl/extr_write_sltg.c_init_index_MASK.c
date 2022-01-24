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
struct sltg_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sltg_data*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sltg_data*) ; 

__attribute__((used)) static void FUNC2(struct sltg_data *index)
{
    static const char compobj[] = { 1,'C','o','m','p','O','b','j',0 };

    FUNC1(index);

    FUNC0(index, compobj);
}