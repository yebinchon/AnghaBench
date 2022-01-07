
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file_op {int * dst_file; int * dst_path; int * src_file; int * src_path; int * src_root; } ;
typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ Flags; scalar_t__ Win32Error; int * Target; int * Source; } ;
typedef int * PWSTR ;
typedef TYPE_1__ FILEPATHS_W ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,int *) ;
 unsigned int HeapSize (int ,int ,int *) ;
 int TRUE ;
 int concat_W (int *,int *,int *,int *) ;
 scalar_t__ strlenW (int *) ;

__attribute__((used)) static BOOL build_filepathsW( const struct file_op *op, FILEPATHS_W *paths )
{
    unsigned int src_len = 1, dst_len = 1;
    WCHAR *source = (PWSTR)paths->Source, *target = (PWSTR)paths->Target;

    if (op->src_root) src_len += strlenW(op->src_root) + 1;
    if (op->src_path) src_len += strlenW(op->src_path) + 1;
    if (op->src_file) src_len += strlenW(op->src_file) + 1;
    if (op->dst_path) dst_len += strlenW(op->dst_path) + 1;
    if (op->dst_file) dst_len += strlenW(op->dst_file) + 1;
    src_len *= sizeof(WCHAR);
    dst_len *= sizeof(WCHAR);

    if (!source || HeapSize( GetProcessHeap(), 0, source ) < src_len )
    {
        HeapFree( GetProcessHeap(), 0, source );
        paths->Source = source = HeapAlloc( GetProcessHeap(), 0, src_len );
    }
    if (!target || HeapSize( GetProcessHeap(), 0, target ) < dst_len )
    {
        HeapFree( GetProcessHeap(), 0, target );
        paths->Target = target = HeapAlloc( GetProcessHeap(), 0, dst_len );
    }
    if (!source || !target) return FALSE;
    concat_W( source, op->src_root, op->src_path, op->src_file );
    concat_W( target, ((void*)0), op->dst_path, op->dst_file );
    paths->Win32Error = 0;
    paths->Flags = 0;
    return TRUE;
}
