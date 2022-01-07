
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int dwCPOutputCount; int cpOutputBuffer; int codePage; } ;
typedef TYPE_1__ RTF_Info ;


 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int RTFPutUnicodeString (TYPE_1__*,int *,int) ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;

__attribute__((used)) static void
RTFFlushCPOutputBuffer(RTF_Info *info)
{
        int bufferMax = info->dwCPOutputCount * 2 * sizeof(WCHAR);
        WCHAR *buffer = heap_alloc(bufferMax);
        int length;

        length = MultiByteToWideChar(info->codePage, 0, info->cpOutputBuffer,
                                     info->dwCPOutputCount, buffer, bufferMax/sizeof(WCHAR));
        info->dwCPOutputCount = 0;

        RTFPutUnicodeString(info, buffer, length);
        heap_free(buffer);
}
