#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ namehash_seg; } ;
typedef  TYPE_2__ WMSFT_TLBFile ;
typedef  int /*<<< orphan*/  ITypeLibImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(ITypeLibImpl *This, WMSFT_TLBFile *file)
{
    file->namehash_seg.len = 0x200;
    file->namehash_seg.data = FUNC0(file->namehash_seg.len);
    FUNC1(file->namehash_seg.data, 0xFF, file->namehash_seg.len);
}