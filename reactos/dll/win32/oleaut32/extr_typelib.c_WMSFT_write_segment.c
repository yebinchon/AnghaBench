
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ WMSFT_SegContents ;
typedef int HANDLE ;
typedef int DWORD ;


 int WriteFile (int ,int ,int ,int *,int *) ;

__attribute__((used)) static void WMSFT_write_segment(HANDLE outfile, WMSFT_SegContents *segment)
{
    DWORD written;
    if(segment)
        WriteFile(outfile, segment->data, segment->len, &written, ((void*)0));
}
