
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_SUCCESS ;
 int read (int ,int *,int ) ;

__attribute__((used)) static NTSTATUS
parallel_read(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
 *result = read(handle, data, length);
 return STATUS_SUCCESS;
}
