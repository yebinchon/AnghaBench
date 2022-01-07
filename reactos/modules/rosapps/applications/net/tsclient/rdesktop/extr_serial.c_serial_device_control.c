
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct termios {int dummy; } ;
struct TYPE_5__ {int baud_rate; int queue_in_size; int queue_out_size; int control; int xonoff; int onlimit; int offlimit; int read_interval_timeout; int read_total_timeout_multiplier; int read_total_timeout_constant; int write_total_timeout_multiplier; int write_total_timeout_constant; int wait_mask; int dtr; int rts; int event_pending; int chars; int word_length; int parity; int stop_bits; struct termios* ptermios; } ;
typedef int STREAM ;
typedef TYPE_1__ SERIAL_DEVICE ;
typedef int RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int DEBUG_SERIAL (char*) ;
 int FILE_DEVICE_SERIAL_PORT ;
 int SERIAL_MS_CAR ;
 int SERIAL_MS_CTS ;
 int SERIAL_MS_DSR ;
 int SERIAL_MS_DTR ;
 int SERIAL_MS_RNG ;
 int SERIAL_MS_RTS ;

 int SERIAL_PURGE_RXABORT ;
 int SERIAL_PURGE_RXCLEAR ;
 int SERIAL_PURGE_TXABORT ;
 int SERIAL_PURGE_TXCLEAR ;
 int STATUS_CANCELLED ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_PENDING ;
 int STATUS_SUCCESS ;
 int TCIFLUSH ;
 int TCION ;
 int TCOFLUSH ;
 int TIOCINQ ;
 int TIOCMGET ;
 int TIOCMSET ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RNG ;
 int TIOCM_RTS ;
 int TIOCOUTQ ;
 TYPE_1__* get_serial_info (int *,int ) ;
 int get_termios (TYPE_1__*,int ) ;
 int hexdump (int ,int) ;
 int in_uint32 (int ,int) ;
 int in_uint32_le (int ,int) ;
 int in_uint8 (int ,int ) ;
 int in_uint8a (int ,int ,int) ;
 int ioctl (int ,int ,int*) ;
 int out_uint32 (int ,int) ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int ) ;
 int out_uint8a (int ,int ,int) ;
 int rdpdr_abort_io (int *,int ,int,int ) ;
 int serial_get_event (int *,int ,int*) ;
 int serial_write (int *,int ,int *,int,int ,int*) ;
 int set_termios (TYPE_1__*,int ) ;
 int tcflow (int ,int ) ;
 int tcflush (int ,int) ;
 int tcsendbreak (int ,int ) ;
 int unimpl (char*,int) ;

__attribute__((used)) static NTSTATUS
serial_device_control(RDPCLIENT * This, NTHANDLE handle, uint32 request, STREAM in, STREAM out)
{
 int flush_mask, purge_mask;
 uint32 result, modemstate;
 uint8 immediate;
 SERIAL_DEVICE *pser_inf;
 struct termios *ptermios;

 if ((request >> 16) != FILE_DEVICE_SERIAL_PORT)
  return STATUS_INVALID_PARAMETER;

 pser_inf = get_serial_info(This, handle);
 ptermios = pser_inf->ptermios;


 request >>= 2;
 request &= 0xfff;

 switch (request)
 {
  case 141:
   in_uint32_le(in, pser_inf->baud_rate);
   set_termios(pser_inf, handle);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_BAUD_RATE %d\n",
          pser_inf->baud_rate));
   break;
  case 152:
   out_uint32_le(out, pser_inf->baud_rate);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_BAUD_RATE %d\n",
          pser_inf->baud_rate));
   break;
  case 134:
   in_uint32_le(in, pser_inf->queue_in_size);
   in_uint32_le(in, pser_inf->queue_out_size);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_QUEUE_SIZE in %d out %d\n",
          pser_inf->queue_in_size, pser_inf->queue_out_size));
   break;
  case 135:
   in_uint8(in, pser_inf->stop_bits);
   in_uint8(in, pser_inf->parity);
   in_uint8(in, pser_inf->word_length);
   set_termios(pser_inf, handle);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_LINE_CONTROL stop %d parity %d word %d\n", pser_inf->stop_bits, pser_inf->parity, pser_inf->word_length));
   break;
  case 148:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_LINE_CONTROL\n"));
   out_uint8(out, pser_inf->stop_bits);
   out_uint8(out, pser_inf->parity);
   out_uint8(out, pser_inf->word_length);
   break;
  case 144:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_IMMEDIATE_CHAR\n"));
   in_uint8(in, immediate);
   serial_write(This, handle, &immediate, 1, 0, &result);
   break;
  case 153:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_CONFIG_SIZE\n"));
   out_uint32_le(out, 0);
   break;
  case 151:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_CHARS\n"));
   out_uint8a(out, pser_inf->chars, 6);
   break;
  case 138:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_CHARS\n"));
   in_uint8a(in, pser_inf->chars, 6);



   set_termios(pser_inf, handle);
   break;
  case 149:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_HANDFLOW\n"));
   get_termios(pser_inf, handle);
   out_uint32_le(out, pser_inf->control);
   out_uint32_le(out, pser_inf->xonoff);
   out_uint32_le(out, pser_inf->onlimit);
   out_uint32_le(out, pser_inf->offlimit);
   break;
  case 136:
   in_uint32_le(in, pser_inf->control);
   in_uint32_le(in, pser_inf->xonoff);
   in_uint32_le(in, pser_inf->onlimit);
   in_uint32_le(in, pser_inf->offlimit);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_HANDFLOW %x %x %x %x\n",
          pser_inf->control, pser_inf->xonoff, pser_inf->onlimit,
          pser_inf->onlimit));
   set_termios(pser_inf, handle);
   break;
  case 132:
   in_uint32(in, pser_inf->read_interval_timeout);
   in_uint32(in, pser_inf->read_total_timeout_multiplier);
   in_uint32(in, pser_inf->read_total_timeout_constant);
   in_uint32(in, pser_inf->write_total_timeout_multiplier);
   in_uint32(in, pser_inf->write_total_timeout_constant);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_TIMEOUTS read timeout %d %d %d\n",
          pser_inf->read_interval_timeout,
          pser_inf->read_total_timeout_multiplier,
          pser_inf->read_total_timeout_constant));
   break;
  case 146:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_TIMEOUTS read timeout %d %d %d\n",
          pser_inf->read_interval_timeout,
          pser_inf->read_total_timeout_multiplier,
          pser_inf->read_total_timeout_constant));

   out_uint32(out, pser_inf->read_interval_timeout);
   out_uint32(out, pser_inf->read_total_timeout_multiplier);
   out_uint32(out, pser_inf->read_total_timeout_constant);
   out_uint32(out, pser_inf->write_total_timeout_multiplier);
   out_uint32(out, pser_inf->write_total_timeout_constant);
   break;
  case 145:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_WAIT_MASK %X\n",
          pser_inf->wait_mask));
   out_uint32(out, pser_inf->wait_mask);
   break;
  case 131:
   in_uint32(in, pser_inf->wait_mask);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_WAIT_MASK %X\n",
          pser_inf->wait_mask));
   break;
  case 137:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_DTR\n"));
   ioctl(handle, TIOCMGET, &result);
   result |= TIOCM_DTR;
   ioctl(handle, TIOCMSET, &result);
   pser_inf->dtr = 1;
   break;
  case 155:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_CLR_DTR\n"));
   ioctl(handle, TIOCMGET, &result);
   result &= ~TIOCM_DTR;
   ioctl(handle, TIOCMSET, &result);
   pser_inf->dtr = 0;
   break;
  case 133:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_RTS\n"));
   ioctl(handle, TIOCMGET, &result);
   result |= TIOCM_RTS;
   ioctl(handle, TIOCMSET, &result);
   pser_inf->rts = 1;
   break;
  case 154:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_CLR_RTS\n"));
   ioctl(handle, TIOCMGET, &result);
   result &= ~TIOCM_RTS;
   ioctl(handle, TIOCMSET, &result);
   pser_inf->rts = 0;
   break;
  case 147:
   modemstate = 0;
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_MODEMSTATUS %X\n", modemstate));
   out_uint32_le(out, modemstate);
   break;
  case 150:
   out_uint32_le(out, 0);
   out_uint32_le(out, 0);

   result = 0;



   out_uint32_le(out, result);
   if (result)
    DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_COMMSTATUS in queue %d\n",
           result));

   result = 0;



   out_uint32_le(out, result);
   if (result)
    DEBUG_SERIAL(("serial_ioctl -> SERIAL_GET_COMMSTATUS out queue %d\n", result));

   out_uint8(out, 0);
   out_uint8(out, 0);
   break;
  case 143:
   in_uint32(in, purge_mask);
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_PURGE purge_mask %X\n", purge_mask));
   flush_mask = 0;
   if (purge_mask & SERIAL_PURGE_TXCLEAR)
    flush_mask |= TCOFLUSH;
   if (purge_mask & SERIAL_PURGE_RXCLEAR)
    flush_mask |= TCIFLUSH;
   if (flush_mask != 0)
    tcflush(handle, flush_mask);
   if (purge_mask & SERIAL_PURGE_TXABORT)
    rdpdr_abort_io(This, handle, 4, STATUS_CANCELLED);
   if (purge_mask & SERIAL_PURGE_RXABORT)
    rdpdr_abort_io(This, handle, 3, STATUS_CANCELLED);
   break;
  case 128:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_WAIT_ON_MASK %X\n",
          pser_inf->wait_mask));
   pser_inf->event_pending = 1;
   if (serial_get_event(This, handle, &result))
   {
    DEBUG_SERIAL(("WAIT end  event = %x\n", result));
    out_uint32_le(out, result);
    break;
   }
   return STATUS_PENDING;
   break;
  case 139:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_BREAK_ON\n"));
   tcsendbreak(handle, 0);
   break;
  case 142:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_RESET_DEVICE\n"));
   break;
  case 140:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_BREAK_OFF\n"));
   break;
  case 130:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_XOFF\n"));
   break;
  case 129:
   DEBUG_SERIAL(("serial_ioctl -> SERIAL_SET_XON\n"));
   tcflow(handle, TCION);
   break;
  default:
   unimpl("SERIAL IOCTL %d\n", request);
   return STATUS_INVALID_PARAMETER;
 }

 return STATUS_SUCCESS;
}
