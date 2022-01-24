#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* closepath ) (int /*<<< orphan*/ *,void*) ;int /*<<< orphan*/  (* lineto ) (int /*<<< orphan*/ *,void*,float,float) ;int /*<<< orphan*/  (* moveto ) (int /*<<< orphan*/ *,void*,float,float) ;int /*<<< orphan*/  (* rectto ) (int /*<<< orphan*/ *,void*,float,float,float,float) ;int /*<<< orphan*/  (* curveto ) (int /*<<< orphan*/ *,void*,float,float,float,float,float,float) ;int /*<<< orphan*/  (* quadto ) (int /*<<< orphan*/ *,void*,float,float,float,float) ;int /*<<< orphan*/  (* curvetoy ) (int /*<<< orphan*/ *,void*,float,float,float,float) ;int /*<<< orphan*/  (* curvetov ) (int /*<<< orphan*/ *,void*,float,float,float,float) ;} ;
typedef  TYPE_1__ fz_path_walker ;
struct TYPE_7__ {int packed; int cmd_len; float* coords; int* cmds; } ;
typedef  TYPE_2__ fz_path ;
struct TYPE_8__ {int cmd_len; size_t coord_len; } ;
typedef  TYPE_3__ fz_packed_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  FZ_CURVETO 149 
#define  FZ_CURVETOCLOSE 148 
#define  FZ_CURVETOV 147 
#define  FZ_CURVETOVCLOSE 146 
#define  FZ_CURVETOY 145 
#define  FZ_CURVETOYCLOSE 144 
#define  FZ_DEGENLINETO 143 
#define  FZ_DEGENLINETOCLOSE 142 
#define  FZ_HORIZTO 141 
#define  FZ_HORIZTOCLOSE 140 
#define  FZ_LINETO 139 
#define  FZ_LINETOCLOSE 138 
#define  FZ_MOVETO 137 
#define  FZ_MOVETOCLOSE 136 
#define  FZ_PATH_PACKED_FLAT 135 
#define  FZ_PATH_PACKED_OPEN 134 
#define  FZ_PATH_UNPACKED 133 
#define  FZ_QUADTO 132 
#define  FZ_QUADTOCLOSE 131 
#define  FZ_RECTTO 130 
#define  FZ_VERTTO 129 
#define  FZ_VERTTOCLOSE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,void*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,void*,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,void*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,void*,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,void*,float,float,float,float) ; 

void FUNC28(fz_context *ctx, const fz_path *path, const fz_path_walker *proc, void *arg)
{
	int i, k, cmd_len;
	float x, y, sx, sy;
	uint8_t *cmds;
	float *coords;

	switch (path->packed)
	{
	case FZ_PATH_UNPACKED:
	case FZ_PATH_PACKED_OPEN:
		cmd_len = path->cmd_len;
		coords = path->coords;
		cmds = path->cmds;
		break;
	case FZ_PATH_PACKED_FLAT:
		cmd_len = ((fz_packed_path *)path)->cmd_len;
		coords = (float *)&((fz_packed_path *)path)[1];
		cmds = (uint8_t *)&coords[((fz_packed_path *)path)->coord_len];
		break;
	default:
		FUNC0("This never happens" == NULL);
		return;
	}

	if (cmd_len == 0)
		return;

	for (k=0, i = 0; i < cmd_len; i++)
	{
		uint8_t cmd = cmds[i];

		switch (cmd)
		{
		case FZ_CURVETO:
		case FZ_CURVETOCLOSE:
			proc->curveto(ctx, arg,
					coords[k],
					coords[k+1],
					coords[k+2],
					coords[k+3],
					x = coords[k+4],
					y = coords[k+5]);
			k += 6;
			if (cmd == FZ_CURVETOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_CURVETOV:
		case FZ_CURVETOVCLOSE:
			if (proc->curvetov)
				proc->curvetov(ctx, arg,
						coords[k],
						coords[k+1],
						x = coords[k+2],
						y = coords[k+3]);
			else
			{
				proc->curveto(ctx, arg,
						x,
						y,
						coords[k],
						coords[k+1],
						coords[k+2],
						coords[k+3]);
				x = coords[k+2];
				y = coords[k+3];
			}
			k += 4;
			if (cmd == FZ_CURVETOVCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_CURVETOY:
		case FZ_CURVETOYCLOSE:
			if (proc->curvetoy)
				proc->curvetoy(ctx, arg,
						coords[k],
						coords[k+1],
						x = coords[k+2],
						y = coords[k+3]);
			else
				proc->curveto(ctx, arg,
						coords[k],
						coords[k+1],
						coords[k+2],
						coords[k+3],
						x = coords[k+2],
						y = coords[k+3]);
			k += 4;
			if (cmd == FZ_CURVETOYCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_QUADTO:
		case FZ_QUADTOCLOSE:
			if (proc->quadto)
				proc->quadto(ctx, arg,
					coords[k],
					coords[k+1],
					x = coords[k+2],
					y = coords[k+3]);
			else
			{
				float c2x = coords[k] * 2;
				float c2y = coords[k+1] * 2;
				float c1x = (x + c2x) / 3;
				float c1y = (y + c2y) / 3;
				x = coords[k+2];
				y = coords[k+3];
				c2x = (c2x + x) / 3;
				c2y = (c2y + y) / 3;

				proc->curveto(ctx, arg,
					c1x,
					c1y,
					c2x,
					c2y,
					x,
					y);
			}
			k += 4;
			if (cmd == FZ_QUADTOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_MOVETO:
		case FZ_MOVETOCLOSE:
			proc->moveto(ctx, arg,
				x = coords[k],
				y = coords[k+1]);
			k += 2;
			sx = x;
			sy = y;
			if (cmd == FZ_MOVETOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_LINETO:
		case FZ_LINETOCLOSE:
			proc->lineto(ctx, arg,
				x = coords[k],
				y = coords[k+1]);
			k += 2;
			if (cmd == FZ_LINETOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_HORIZTO:
		case FZ_HORIZTOCLOSE:
			proc->lineto(ctx, arg,
				x = coords[k],
				y);
			k += 1;
			if (cmd == FZ_HORIZTOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_VERTTO:
		case FZ_VERTTOCLOSE:
			proc->lineto(ctx, arg,
				x,
				y = coords[k]);
			k += 1;
			if (cmd == FZ_VERTTOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_DEGENLINETO:
		case FZ_DEGENLINETOCLOSE:
			proc->lineto(ctx, arg,
				x,
				y);
			if (cmd == FZ_DEGENLINETOCLOSE)
			{
				if (proc->closepath)
					proc->closepath(ctx, arg);
				x = sx;
				y = sy;
			}
			break;
		case FZ_RECTTO:
			if (proc->rectto)
			{
				proc->rectto(ctx, arg,
						x = coords[k],
						y = coords[k+1],
						coords[k+2],
						coords[k+3]);
			}
			else
			{
				proc->moveto(ctx, arg,
					x = coords[k],
					y = coords[k+1]);
				proc->lineto(ctx, arg,
					coords[k+2],
					coords[k+1]);
				proc->lineto(ctx, arg,
					coords[k+2],
					coords[k+3]);
				proc->lineto(ctx, arg,
					coords[k],
					coords[k+3]);
				if (proc->closepath)
					proc->closepath(ctx, arg);
			}
			sx = x;
			sy = y;
			k += 4;
			break;
		}
	}
}