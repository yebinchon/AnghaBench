#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
struct TYPE_16__ {int /*<<< orphan*/  len; scalar_t__ fde; scalar_t__ loctype; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  unit; } ;
struct TYPE_12__ {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_13__ {TYPE_2__ b; } ;
struct TYPE_11__ {scalar_t__ location; scalar_t__ name; } ;
struct TYPE_14__ {scalar_t__ tag; TYPE_3__ location; TYPE_1__ have; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_15__ {TYPE_4__ attrs; int /*<<< orphan*/  unit; } ;
typedef  TYPE_5__ DwarfSym ;
typedef  TYPE_6__ DwarfParam ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 scalar_t__ TagFormalParameter ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC5(Dwarf *d, DwarfSym *s, ulong pc, int pnum, DwarfParam *paramblocks)
{
	int ip = 0;
	DwarfSym param = { };
	int res = FUNC0(d, s, &param);
	while (res == 0 && ip < pnum) {
		if (param.attrs.tag == TagFormalParameter &&
			param.attrs.have.name && 
			param.attrs.have.location) {
			paramblocks[ip].name = FUNC1(FUNC3(param.attrs.name)+1);
			FUNC2(paramblocks[ip].name, param.attrs.name);
			paramblocks[ip].unit = param.unit;
			paramblocks[ip].type = param.attrs.type;
            paramblocks[ip].loctype = param.attrs.have.location;
            paramblocks[ip].len = param.attrs.location.b.len;
			paramblocks[ip].fde = (ulong)param.attrs.location.b.data;
            FUNC4("param[%d] block %s -> type %x loctype %x fde %x len %x", 
                   ip, 
                   paramblocks[ip].name, 
                   paramblocks[ip].type,
                   paramblocks[ip].loctype, 
                   paramblocks[ip].fde,
                   paramblocks[ip].len);
            ip++;
		}
		res = FUNC0(d, s, &param);
	}
	return ip;
}