
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_3__ {int printer_fp; } ;
typedef int RDPCLIENT ;
typedef TYPE_1__ PRINTER ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int STATUS_INVALID_HANDLE ;
 int STATUS_SUCCESS ;
 scalar_t__ ferror (int ) ;
 int fwrite (int *,int,int,int ) ;
 TYPE_1__* get_printer_data (int *,int ) ;

__attribute__((used)) static NTSTATUS
printer_write(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
 PRINTER *pprinter_data;

 pprinter_data = get_printer_data(This, handle);
 *result = length * fwrite(data, length, 1, pprinter_data->printer_fp);

 if (ferror(pprinter_data->printer_fp))
 {
  *result = 0;
  return STATUS_INVALID_HANDLE;
 }
 return STATUS_SUCCESS;
}
