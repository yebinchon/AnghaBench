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
struct file_op_queue {struct file_op* head; } ;
struct file_op {scalar_t__ dst_file; scalar_t__ src_file; struct file_op* next; scalar_t__ dst_sd; struct file_op* dst_path; struct file_op* src_tag; struct file_op* src_descr; struct file_op* src_path; struct file_op* src_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_op*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3( struct file_op_queue *queue )
{
    struct file_op *t, *op = queue->head;

    while( op )
    {
        FUNC1( FUNC0(), 0, op->src_root );
        FUNC1( FUNC0(), 0, op->src_path );
        FUNC1( FUNC0(), 0, op->src_file );
        FUNC1( FUNC0(), 0, op->src_descr );
        FUNC1( FUNC0(), 0, op->src_tag );
        FUNC1( FUNC0(), 0, op->dst_path );
        if (op->dst_sd) FUNC2( op->dst_sd);
        if (op->dst_file != op->src_file) FUNC1( FUNC0(), 0, op->dst_file );
        t = op;
        op = op->next;
        FUNC1( FUNC0(), 0, t );
    }
}