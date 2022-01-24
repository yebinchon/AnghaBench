#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rofi_int_matcher ;
struct TYPE_4__ {TYPE_1__* hosts_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  hostname; } ;
typedef  TYPE_2__ SSHModePrivateData ;
typedef  int /*<<< orphan*/  Mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2 ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    SSHModePrivateData *rmpd = (SSHModePrivateData *) FUNC1 ( sw );
    return FUNC0 ( tokens, rmpd->hosts_list[index].hostname );
}