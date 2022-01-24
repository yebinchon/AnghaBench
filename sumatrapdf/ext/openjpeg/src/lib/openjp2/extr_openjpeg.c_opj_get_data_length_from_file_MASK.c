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
typedef  int /*<<< orphan*/  OPJ_UINT64 ;
typedef  scalar_t__ OPJ_OFF_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 

__attribute__((used)) static OPJ_UINT64 FUNC2(FILE * p_file)
{
    OPJ_OFF_T file_length = 0;

    FUNC0(p_file, 0, SEEK_END);
    file_length = (OPJ_OFF_T)FUNC1(p_file);
    FUNC0(p_file, 0, SEEK_SET);

    return (OPJ_UINT64)file_length;
}