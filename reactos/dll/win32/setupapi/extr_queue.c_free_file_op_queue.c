
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_op_queue {struct file_op* head; } ;
struct file_op {scalar_t__ dst_file; scalar_t__ src_file; struct file_op* next; scalar_t__ dst_sd; struct file_op* dst_path; struct file_op* src_tag; struct file_op* src_descr; struct file_op* src_path; struct file_op* src_root; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct file_op*) ;
 int LocalFree (scalar_t__) ;

__attribute__((used)) static void free_file_op_queue( struct file_op_queue *queue )
{
    struct file_op *t, *op = queue->head;

    while( op )
    {
        HeapFree( GetProcessHeap(), 0, op->src_root );
        HeapFree( GetProcessHeap(), 0, op->src_path );
        HeapFree( GetProcessHeap(), 0, op->src_file );
        HeapFree( GetProcessHeap(), 0, op->src_descr );
        HeapFree( GetProcessHeap(), 0, op->src_tag );
        HeapFree( GetProcessHeap(), 0, op->dst_path );
        if (op->dst_sd) LocalFree( op->dst_sd);
        if (op->dst_file != op->src_file) HeapFree( GetProcessHeap(), 0, op->dst_file );
        t = op;
        op = op->next;
        HeapFree( GetProcessHeap(), 0, t );
    }
}
