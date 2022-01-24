#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ colnr_T ;
struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
#define  ALEF 138 
 int ALEF_ ; 
#define  ALEF_U_H 137 
 int ALEF_U_H_ ; 
#define  AYN 136 
 int AYN_ ; 
#define  GHAYN 135 
 int GHAYN_ ; 
#define  IE 134 
 int IE_ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  TEE 133 
 int TEE_ ; 
#define  YE 132 
#define  YEE 131 
 int YEE_ ; 
 int YE_ ; 
#define  _AYN 130 
 int _AYN_ ; 
#define  _GHAYN 129 
 int _GHAYN_ ; 
#define  _HE 128 
 int _HE_ ; 
 TYPE_2__* curwin ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ p_ri ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 ()
{
    int	tempc;

    if (curwin->w_cursor.col != 0 &&
	(curwin->w_cursor.col + 1 == (colnr_T)FUNC0(FUNC4())))
	return;

    if (!curwin->w_cursor.col && p_ri)
	return;

    if (p_ri)
	FUNC1();
    else
	FUNC3();

    switch (FUNC2())
    {
	case ALEF:
		tempc = ALEF_;
		break;
	case ALEF_U_H:
		tempc = ALEF_U_H_;
		break;
	case _AYN:
		tempc = _AYN_;
		break;
	case AYN:
		tempc = AYN_;
		break;
	case _GHAYN:
		tempc = _GHAYN_;
		break;
	case GHAYN:
		tempc = GHAYN_;
		break;
	case _HE:
		tempc = _HE_;
		break;
	case YE:
		tempc = YE_;
		break;
	case IE:
		tempc = IE_;
		break;
	case TEE:
		tempc = TEE_;
		break;
	case YEE:
		tempc = YEE_;
		break;
	default:
		tempc = 0;
    }

    if (tempc)
	FUNC5(tempc);

    if (p_ri)
	FUNC3();
    else
	FUNC1();
}