#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  in6; TYPE_1__ in; } ;
struct TYPE_9__ {int type; size_t timestamp; size_t timespan; size_t size; size_t int_val; size_t int8; size_t int16; size_t int32; size_t int64; size_t uint_val; size_t uint8; size_t uint16; size_t uint32; size_t uint64; size_t percent; size_t ifindex; TYPE_2__ address; int /*<<< orphan*/  boolean; int /*<<< orphan*/  string; } ;
typedef  TYPE_3__ TableData ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TABLE_BOOLEAN 150 
#define  TABLE_BPS 149 
#define  TABLE_IFINDEX 148 
#define  TABLE_IN6_ADDR 147 
#define  TABLE_INT 146 
#define  TABLE_INT16 145 
#define  TABLE_INT32 144 
#define  TABLE_INT64 143 
#define  TABLE_INT8 142 
#define  TABLE_IN_ADDR 141 
#define  TABLE_PERCENT 140 
#define  TABLE_SIZE 139 
#define  TABLE_STRING 138 
#define  TABLE_TIMESPAN 137 
#define  TABLE_TIMESPAN_MSEC 136 
#define  TABLE_TIMESTAMP 135 
#define  TABLE_TIMESTAMP_RELATIVE 134 
#define  TABLE_TIMESTAMP_UTC 133 
#define  TABLE_UINT 132 
#define  TABLE_UINT16 131 
#define  TABLE_UINT32 130 
#define  TABLE_UINT64 129 
#define  TABLE_UINT8 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(TableData *a, size_t index_a, TableData *b, size_t index_b) {
        FUNC2(a);
        FUNC2(b);

        if (a->type == b->type) {

                /* We only define ordering for cells of the same data type. If cells with different data types are
                 * compared we follow the order the cells were originally added in */

                switch (a->type) {

                case TABLE_STRING:
                        return FUNC4(a->string, b->string);

                case TABLE_BOOLEAN:
                        if (!a->boolean && b->boolean)
                                return -1;
                        if (a->boolean && !b->boolean)
                                return 1;
                        return 0;

                case TABLE_TIMESTAMP:
                case TABLE_TIMESTAMP_UTC:
                case TABLE_TIMESTAMP_RELATIVE:
                        return FUNC0(a->timestamp, b->timestamp);

                case TABLE_TIMESPAN:
                case TABLE_TIMESPAN_MSEC:
                        return FUNC0(a->timespan, b->timespan);

                case TABLE_SIZE:
                case TABLE_BPS:
                        return FUNC0(a->size, b->size);

                case TABLE_INT:
                        return FUNC0(a->int_val, b->int_val);

                case TABLE_INT8:
                        return FUNC0(a->int8, b->int8);

                case TABLE_INT16:
                        return FUNC0(a->int16, b->int16);

                case TABLE_INT32:
                        return FUNC0(a->int32, b->int32);

                case TABLE_INT64:
                        return FUNC0(a->int64, b->int64);

                case TABLE_UINT:
                        return FUNC0(a->uint_val, b->uint_val);

                case TABLE_UINT8:
                        return FUNC0(a->uint8, b->uint8);

                case TABLE_UINT16:
                        return FUNC0(a->uint16, b->uint16);

                case TABLE_UINT32:
                        return FUNC0(a->uint32, b->uint32);

                case TABLE_UINT64:
                        return FUNC0(a->uint64, b->uint64);

                case TABLE_PERCENT:
                        return FUNC0(a->percent, b->percent);

                case TABLE_IFINDEX:
                        return FUNC0(a->ifindex, b->ifindex);

                case TABLE_IN_ADDR:
                        return FUNC0(a->address.in.s_addr, b->address.in.s_addr);

                case TABLE_IN6_ADDR:
                        return FUNC3(&a->address.in6, &b->address.in6, FUNC1(AF_INET6));

                default:
                        ;
                }
        }

        /* Generic fallback using the original order in which the cells where added. */
        return FUNC0(index_a, index_b);
}