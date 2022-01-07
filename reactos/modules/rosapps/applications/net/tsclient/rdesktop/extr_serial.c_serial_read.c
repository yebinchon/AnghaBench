
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct termios {long* c_cc; } ;
struct TYPE_3__ {int read_total_timeout_multiplier; int read_total_timeout_constant; int read_interval_timeout; struct termios* ptermios; } ;
typedef TYPE_1__ SERIAL_DEVICE ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int DEBUG_SERIAL (char*) ;
 int STATUS_SUCCESS ;
 int TCSANOW ;
 int TIOCINQ ;
 size_t VMIN ;
 size_t VTIME ;
 TYPE_1__* get_serial_info (int *,int ) ;
 int hexdump (int *,int) ;
 int ioctl (int ,int ,int*) ;
 int read (int ,int *,int) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static NTSTATUS
serial_read(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
 long timeout;
 SERIAL_DEVICE *pser_inf;
 struct termios *ptermios;





 timeout = 90;
 pser_inf = get_serial_info(This, handle);
 ptermios = pser_inf->ptermios;



 if (pser_inf->read_total_timeout_multiplier | pser_inf->read_total_timeout_constant)
 {
  timeout =
   (pser_inf->read_total_timeout_multiplier * length +
    pser_inf->read_total_timeout_constant + 99) / 100;
 }
 else if (pser_inf->read_interval_timeout)
 {
  timeout = (pser_inf->read_interval_timeout * length + 99) / 100;
 }




 if (timeout == 0)
 {
  ptermios->c_cc[VTIME] = 0;
  ptermios->c_cc[VMIN] = 0;
 }
 else
 {
  ptermios->c_cc[VTIME] = timeout;
  ptermios->c_cc[VMIN] = 1;
 }
 tcsetattr(handle, TCSANOW, ptermios);






 *result = read(handle, data, length);







 return STATUS_SUCCESS;
}
