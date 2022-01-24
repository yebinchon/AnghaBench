#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dec_enc; int /*<<< orphan*/  encoding; } ;
struct TYPE_5__ {int /*<<< orphan*/  buffer; TYPE_1__ af; } ;
typedef  TYPE_2__ mpg123_handle ;

/* Variables and functions */
#define  MPG123_ENC_FLOAT_32 134 
#define  MPG123_ENC_SIGNED_16 133 
#define  MPG123_ENC_SIGNED_24 132 
#define  MPG123_ENC_SIGNED_32 131 
#define  MPG123_ENC_UNSIGNED_16 130 
#define  MPG123_ENC_UNSIGNED_24 129 
#define  MPG123_ENC_UNSIGNED_32 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(mpg123_handle *fr)
{
	/*
		This caters for the final output formats that are never produced by
		decoder synth directly (wide unsigned and 24 bit formats) or that are
		missing because of limited decoder precision (16 bit synth but 32 or
		24 bit output).
	*/
	switch(fr->af.dec_enc)
	{
#ifndef NO_32BIT
	case MPG123_ENC_SIGNED_32:
		switch(fr->af.encoding)
		{
		case MPG123_ENC_UNSIGNED_32:
			FUNC4(&fr->buffer);
		break;
		case MPG123_ENC_UNSIGNED_24:
			FUNC4(&fr->buffer);
			FUNC0(&fr->buffer);
		break;
		case MPG123_ENC_SIGNED_24:
			FUNC0(&fr->buffer);
		break;
		}
	break;
#endif
#ifndef NO_16BIT
	case MPG123_ENC_SIGNED_16:
		switch(fr->af.encoding)
		{
		case MPG123_ENC_UNSIGNED_16:
			FUNC3(&fr->buffer);
		break;
#ifndef NO_REAL
		case MPG123_ENC_FLOAT_32:
			FUNC1(&fr->buffer);
		break;
#endif
#ifndef NO_32BIT
		case MPG123_ENC_SIGNED_32:
			FUNC2(&fr->buffer);
		break;
		case MPG123_ENC_UNSIGNED_32:
			FUNC2(&fr->buffer);
			FUNC4(&fr->buffer);
		break;
		case MPG123_ENC_UNSIGNED_24:
			FUNC2(&fr->buffer);
			FUNC4(&fr->buffer);
			FUNC0(&fr->buffer);
		break;
		case MPG123_ENC_SIGNED_24:
			FUNC2(&fr->buffer);
			FUNC0(&fr->buffer);
		break;
#endif
		}
	break;
#endif
	}
}