#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int available; } ;
struct TYPE_7__ {TYPE_1__ br; } ;
struct TYPE_8__ {TYPE_2__ uncomp; } ;
typedef  TYPE_3__ ar_archive_rar ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int) ; 

__attribute__((used)) static inline bool FUNC1(ar_archive_rar *rar, int bits)
{
    return bits <= rar->uncomp.br.available || FUNC0(rar, bits);
}