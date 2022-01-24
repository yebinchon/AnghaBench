#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v64 ;
typedef  int /*<<< orphan*/  v32 ;
typedef  int /*<<< orphan*/  v16 ;
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ contents; } ;
typedef  TYPE_1__ intset ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 scalar_t__ INTSET_ENC_INT32 ; 
 scalar_t__ INTSET_ENC_INT64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC4(intset *is, int pos, uint8_t enc) {
    int64_t v64;
    int32_t v32;
    int16_t v16;

    if (enc == INTSET_ENC_INT64) {
        FUNC0(&v64,((int64_t*)is->contents)+pos,sizeof(v64));
        FUNC3(&v64);
        return v64;
    } else if (enc == INTSET_ENC_INT32) {
        FUNC0(&v32,((int32_t*)is->contents)+pos,sizeof(v32));
        FUNC2(&v32);
        return v32;
    } else {
        FUNC0(&v16,((int16_t*)is->contents)+pos,sizeof(v16));
        FUNC1(&v16);
        return v16;
    }
}