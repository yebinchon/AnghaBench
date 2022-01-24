#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
struct termios {int dummy; } ;
struct TYPE_5__ {int baud_rate; int queue_in_size; int queue_out_size; int control; int xonoff; int onlimit; int offlimit; int read_interval_timeout; int read_total_timeout_multiplier; int read_total_timeout_constant; int write_total_timeout_multiplier; int write_total_timeout_constant; int wait_mask; int dtr; int rts; int event_pending; int /*<<< orphan*/  chars; int /*<<< orphan*/  word_length; int /*<<< orphan*/  parity; int /*<<< orphan*/  stop_bits; struct termios* ptermios; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ SERIAL_DEVICE ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  NTHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FILE_DEVICE_SERIAL_PORT ; 
#define  SERIAL_CLR_DTR 155 
#define  SERIAL_CLR_RTS 154 
#define  SERIAL_CONFIG_SIZE 153 
#define  SERIAL_GET_BAUD_RATE 152 
#define  SERIAL_GET_CHARS 151 
#define  SERIAL_GET_COMMSTATUS 150 
#define  SERIAL_GET_HANDFLOW 149 
#define  SERIAL_GET_LINE_CONTROL 148 
#define  SERIAL_GET_MODEMSTATUS 147 
#define  SERIAL_GET_TIMEOUTS 146 
#define  SERIAL_GET_WAIT_MASK 145 
#define  SERIAL_IMMEDIATE_CHAR 144 
 int SERIAL_MS_CAR ; 
 int SERIAL_MS_CTS ; 
 int SERIAL_MS_DSR ; 
 int SERIAL_MS_DTR ; 
 int SERIAL_MS_RNG ; 
 int SERIAL_MS_RTS ; 
#define  SERIAL_PURGE 143 
 int SERIAL_PURGE_RXABORT ; 
 int SERIAL_PURGE_RXCLEAR ; 
 int SERIAL_PURGE_TXABORT ; 
 int SERIAL_PURGE_TXCLEAR ; 
#define  SERIAL_RESET_DEVICE 142 
#define  SERIAL_SET_BAUD_RATE 141 
#define  SERIAL_SET_BREAK_OFF 140 
#define  SERIAL_SET_BREAK_ON 139 
#define  SERIAL_SET_CHARS 138 
#define  SERIAL_SET_DTR 137 
#define  SERIAL_SET_HANDFLOW 136 
#define  SERIAL_SET_LINE_CONTROL 135 
#define  SERIAL_SET_QUEUE_SIZE 134 
#define  SERIAL_SET_RTS 133 
#define  SERIAL_SET_TIMEOUTS 132 
#define  SERIAL_SET_WAIT_MASK 131 
#define  SERIAL_SET_XOFF 130 
#define  SERIAL_SET_XON 129 
#define  SERIAL_WAIT_ON_MASK 128 
 int /*<<< orphan*/  STATUS_CANCELLED ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int TCIFLUSH ; 
 int /*<<< orphan*/  TCION ; 
 int TCOFLUSH ; 
 int /*<<< orphan*/  TIOCINQ ; 
 int /*<<< orphan*/  TIOCMGET ; 
 int /*<<< orphan*/  TIOCMSET ; 
 int TIOCM_CAR ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RNG ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  TIOCOUTQ ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 

__attribute__((used)) static NTSTATUS
FUNC21(RDPCLIENT * This, NTHANDLE handle, uint32 request, STREAM in, STREAM out)
{
	int flush_mask, purge_mask;
	uint32 result, modemstate;
	uint8 immediate;
	SERIAL_DEVICE *pser_inf;
	struct termios *ptermios;

	if ((request >> 16) != FILE_DEVICE_SERIAL_PORT)
		return STATUS_INVALID_PARAMETER;

	pser_inf = FUNC1(This, handle);
	ptermios = pser_inf->ptermios;

	/* extract operation */
	request >>= 2;
	request &= 0xfff;

	switch (request)
	{
		case SERIAL_SET_BAUD_RATE:
			FUNC5(in, pser_inf->baud_rate);
			FUNC16(pser_inf, handle);
			FUNC0(("serial_ioctl -> SERIAL_SET_BAUD_RATE %d\n",
				      pser_inf->baud_rate));
			break;
		case SERIAL_GET_BAUD_RATE:
			FUNC10(out, pser_inf->baud_rate);
			FUNC0(("serial_ioctl -> SERIAL_GET_BAUD_RATE %d\n",
				      pser_inf->baud_rate));
			break;
		case SERIAL_SET_QUEUE_SIZE:
			FUNC5(in, pser_inf->queue_in_size);
			FUNC5(in, pser_inf->queue_out_size);
			FUNC0(("serial_ioctl -> SERIAL_SET_QUEUE_SIZE in %d out %d\n",
				      pser_inf->queue_in_size, pser_inf->queue_out_size));
			break;
		case SERIAL_SET_LINE_CONTROL:
			FUNC6(in, pser_inf->stop_bits);
			FUNC6(in, pser_inf->parity);
			FUNC6(in, pser_inf->word_length);
			FUNC16(pser_inf, handle);
			FUNC0(("serial_ioctl -> SERIAL_SET_LINE_CONTROL stop %d parity %d word %d\n", pser_inf->stop_bits, pser_inf->parity, pser_inf->word_length));
			break;
		case SERIAL_GET_LINE_CONTROL:
			FUNC0(("serial_ioctl -> SERIAL_GET_LINE_CONTROL\n"));
			FUNC11(out, pser_inf->stop_bits);
			FUNC11(out, pser_inf->parity);
			FUNC11(out, pser_inf->word_length);
			break;
		case SERIAL_IMMEDIATE_CHAR:
			FUNC0(("serial_ioctl -> SERIAL_IMMEDIATE_CHAR\n"));
			FUNC6(in, immediate);
			FUNC15(This, handle, &immediate, 1, 0, &result);
			break;
		case SERIAL_CONFIG_SIZE:
			FUNC0(("serial_ioctl -> SERIAL_CONFIG_SIZE\n"));
			FUNC10(out, 0);
			break;
		case SERIAL_GET_CHARS:
			FUNC0(("serial_ioctl -> SERIAL_GET_CHARS\n"));
			FUNC12(out, pser_inf->chars, 6);
			break;
		case SERIAL_SET_CHARS:
			FUNC0(("serial_ioctl -> SERIAL_SET_CHARS\n"));
			FUNC7(in, pser_inf->chars, 6);
#ifdef WITH_DEBUG_SERIAL
			hexdump(pser_inf->chars, 6);
#endif
			FUNC16(pser_inf, handle);
			break;
		case SERIAL_GET_HANDFLOW:
			FUNC0(("serial_ioctl -> SERIAL_GET_HANDFLOW\n"));
			FUNC2(pser_inf, handle);
			FUNC10(out, pser_inf->control);
			FUNC10(out, pser_inf->xonoff);	/* Xon/Xoff */
			FUNC10(out, pser_inf->onlimit);
			FUNC10(out, pser_inf->offlimit);
			break;
		case SERIAL_SET_HANDFLOW:
			FUNC5(in, pser_inf->control);
			FUNC5(in, pser_inf->xonoff);
			FUNC5(in, pser_inf->onlimit);
			FUNC5(in, pser_inf->offlimit);
			FUNC0(("serial_ioctl -> SERIAL_SET_HANDFLOW %x %x %x %x\n",
				      pser_inf->control, pser_inf->xonoff, pser_inf->onlimit,
				      pser_inf->onlimit));
			FUNC16(pser_inf, handle);
			break;
		case SERIAL_SET_TIMEOUTS:
			FUNC4(in, pser_inf->read_interval_timeout);
			FUNC4(in, pser_inf->read_total_timeout_multiplier);
			FUNC4(in, pser_inf->read_total_timeout_constant);
			FUNC4(in, pser_inf->write_total_timeout_multiplier);
			FUNC4(in, pser_inf->write_total_timeout_constant);
			FUNC0(("serial_ioctl -> SERIAL_SET_TIMEOUTS read timeout %d %d %d\n",
				      pser_inf->read_interval_timeout,
				      pser_inf->read_total_timeout_multiplier,
				      pser_inf->read_total_timeout_constant));
			break;
		case SERIAL_GET_TIMEOUTS:
			FUNC0(("serial_ioctl -> SERIAL_GET_TIMEOUTS read timeout %d %d %d\n",
				      pser_inf->read_interval_timeout,
				      pser_inf->read_total_timeout_multiplier,
				      pser_inf->read_total_timeout_constant));

			FUNC9(out, pser_inf->read_interval_timeout);
			FUNC9(out, pser_inf->read_total_timeout_multiplier);
			FUNC9(out, pser_inf->read_total_timeout_constant);
			FUNC9(out, pser_inf->write_total_timeout_multiplier);
			FUNC9(out, pser_inf->write_total_timeout_constant);
			break;
		case SERIAL_GET_WAIT_MASK:
			FUNC0(("serial_ioctl -> SERIAL_GET_WAIT_MASK %X\n",
				      pser_inf->wait_mask));
			FUNC9(out, pser_inf->wait_mask);
			break;
		case SERIAL_SET_WAIT_MASK:
			FUNC4(in, pser_inf->wait_mask);
			FUNC0(("serial_ioctl -> SERIAL_SET_WAIT_MASK %X\n",
				      pser_inf->wait_mask));
			break;
		case SERIAL_SET_DTR:
			FUNC0(("serial_ioctl -> SERIAL_SET_DTR\n"));
			FUNC8(handle, TIOCMGET, &result);
			result |= TIOCM_DTR;
			FUNC8(handle, TIOCMSET, &result);
			pser_inf->dtr = 1;
			break;
		case SERIAL_CLR_DTR:
			FUNC0(("serial_ioctl -> SERIAL_CLR_DTR\n"));
			FUNC8(handle, TIOCMGET, &result);
			result &= ~TIOCM_DTR;
			FUNC8(handle, TIOCMSET, &result);
			pser_inf->dtr = 0;
			break;
		case SERIAL_SET_RTS:
			FUNC0(("serial_ioctl -> SERIAL_SET_RTS\n"));
			FUNC8(handle, TIOCMGET, &result);
			result |= TIOCM_RTS;
			FUNC8(handle, TIOCMSET, &result);
			pser_inf->rts = 1;
			break;
		case SERIAL_CLR_RTS:
			FUNC0(("serial_ioctl -> SERIAL_CLR_RTS\n"));
			FUNC8(handle, TIOCMGET, &result);
			result &= ~TIOCM_RTS;
			FUNC8(handle, TIOCMSET, &result);
			pser_inf->rts = 0;
			break;
		case SERIAL_GET_MODEMSTATUS:
			modemstate = 0;
#ifdef TIOCMGET
			ioctl(handle, TIOCMGET, &result);
			if (result & TIOCM_CTS)
				modemstate |= SERIAL_MS_CTS;
			if (result & TIOCM_DSR)
				modemstate |= SERIAL_MS_DSR;
			if (result & TIOCM_RNG)
				modemstate |= SERIAL_MS_RNG;
			if (result & TIOCM_CAR)
				modemstate |= SERIAL_MS_CAR;
			if (result & TIOCM_DTR)
				modemstate |= SERIAL_MS_DTR;
			if (result & TIOCM_RTS)
				modemstate |= SERIAL_MS_RTS;
#endif
			FUNC0(("serial_ioctl -> SERIAL_GET_MODEMSTATUS %X\n", modemstate));
			FUNC10(out, modemstate);
			break;
		case SERIAL_GET_COMMSTATUS:
			FUNC10(out, 0);	/* Errors */
			FUNC10(out, 0);	/* Hold reasons */

			result = 0;
#ifdef TIOCINQ
			ioctl(handle, TIOCINQ, &result);
#endif
			FUNC10(out, result);	/* Amount in in queue */
			if (result)
				FUNC0(("serial_ioctl -> SERIAL_GET_COMMSTATUS in queue %d\n",
					      result));

			result = 0;
#ifdef TIOCOUTQ
			ioctl(handle, TIOCOUTQ, &result);
#endif
			FUNC10(out, result);	/* Amount in out queue */
			if (result)
				FUNC0(("serial_ioctl -> SERIAL_GET_COMMSTATUS out queue %d\n", result));

			FUNC11(out, 0);	/* EofReceived */
			FUNC11(out, 0);	/* WaitForImmediate */
			break;
		case SERIAL_PURGE:
			FUNC4(in, purge_mask);
			FUNC0(("serial_ioctl -> SERIAL_PURGE purge_mask %X\n", purge_mask));
			flush_mask = 0;
			if (purge_mask & SERIAL_PURGE_TXCLEAR)
				flush_mask |= TCOFLUSH;
			if (purge_mask & SERIAL_PURGE_RXCLEAR)
				flush_mask |= TCIFLUSH;
			if (flush_mask != 0)
				FUNC18(handle, flush_mask);
			if (purge_mask & SERIAL_PURGE_TXABORT)
				FUNC13(This, handle, 4, STATUS_CANCELLED);
			if (purge_mask & SERIAL_PURGE_RXABORT)
				FUNC13(This, handle, 3, STATUS_CANCELLED);
			break;
		case SERIAL_WAIT_ON_MASK:
			FUNC0(("serial_ioctl -> SERIAL_WAIT_ON_MASK %X\n",
				      pser_inf->wait_mask));
			pser_inf->event_pending = 1;
			if (FUNC14(This, handle, &result))
			{
				FUNC0(("WAIT end  event = %x\n", result));
				FUNC10(out, result);
				break;
			}
			return STATUS_PENDING;
			break;
		case SERIAL_SET_BREAK_ON:
			FUNC0(("serial_ioctl -> SERIAL_SET_BREAK_ON\n"));
			FUNC19(handle, 0);
			break;
		case SERIAL_RESET_DEVICE:
			FUNC0(("serial_ioctl -> SERIAL_RESET_DEVICE\n"));
			break;
		case SERIAL_SET_BREAK_OFF:
			FUNC0(("serial_ioctl -> SERIAL_SET_BREAK_OFF\n"));
			break;
		case SERIAL_SET_XOFF:
			FUNC0(("serial_ioctl -> SERIAL_SET_XOFF\n"));
			break;
		case SERIAL_SET_XON:
			FUNC0(("serial_ioctl -> SERIAL_SET_XON\n"));
			FUNC17(handle, TCION);
			break;
		default:
			FUNC20("SERIAL IOCTL %d\n", request);
			return STATUS_INVALID_PARAMETER;
	}

	return STATUS_SUCCESS;
}