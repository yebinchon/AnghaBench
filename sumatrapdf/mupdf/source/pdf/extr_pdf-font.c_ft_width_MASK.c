#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* font; } ;
typedef  TYPE_2__ pdf_font_desc ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_9__ {int units_per_EM; } ;
struct TYPE_7__ {TYPE_3__* ft_face; } ;
typedef  int FT_UShort ;
typedef  int FT_Fixed ;
typedef  TYPE_3__* FT_Face ;

/* Variables and functions */
 int FT_Err_Invalid_Argument ; 
 int FUNC0 (TYPE_3__*,int,int,int*) ; 
 int FT_LOAD_IGNORE_TRANSFORM ; 
 int FT_LOAD_NO_BITMAP ; 
 int FT_LOAD_NO_HINTING ; 
 int FT_LOAD_NO_SCALE ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(fz_context *ctx, pdf_font_desc *fontdesc, int cid)
{
	int mask = FT_LOAD_NO_SCALE | FT_LOAD_NO_HINTING | FT_LOAD_NO_BITMAP | FT_LOAD_IGNORE_TRANSFORM;
	int gid = FUNC1(fontdesc, cid);
	FT_Fixed adv = 0;
	int fterr;
	FT_Face face = fontdesc->font->ft_face;
	FT_UShort units_per_EM;

	fterr = FUNC0(face, gid, mask, &adv);
	if (fterr && fterr != FT_Err_Invalid_Argument)
		FUNC3(ctx, "FT_Get_Advance(%d): %s", gid, FUNC2(fterr));

	units_per_EM = face->units_per_EM;
	if (units_per_EM == 0)
		units_per_EM = 2048;

	return adv * 1000 / units_per_EM;
}