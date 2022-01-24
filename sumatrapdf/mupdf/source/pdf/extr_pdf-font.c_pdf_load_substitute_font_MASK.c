#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* font; } ;
typedef  TYPE_2__ pdf_font_desc ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int fake_bold; int is_bold; int fake_italic; int is_italic; int is_mono; int is_serif; int ft_substitute; int ft_stretch; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_SYNTAX ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,char const*,unsigned char const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_font_desc *fontdesc, const char *fontname, int mono, int serif, int bold, int italic)
{
	fontdesc->font = FUNC0(ctx, fontname, bold, italic, 0);
	if (!fontdesc->font)
	{
		const unsigned char *data;
		int len;

		data = FUNC3(ctx, mono, serif, bold, italic, &len);
		if (!data)
			FUNC2(ctx, FZ_ERROR_SYNTAX, "cannot find substitute font");

		fontdesc->font = FUNC1(ctx, fontname, data, len, 0, 1);
		fontdesc->font->flags.fake_bold = bold && !fontdesc->font->flags.is_bold;
		fontdesc->font->flags.fake_italic = italic && !fontdesc->font->flags.is_italic;

		fontdesc->font->flags.is_mono = mono;
		fontdesc->font->flags.is_serif = serif;
		fontdesc->font->flags.is_bold = bold;
		fontdesc->font->flags.is_italic = italic;
	}

	fontdesc->font->flags.ft_substitute = 1;
	fontdesc->font->flags.ft_stretch = 1;
}