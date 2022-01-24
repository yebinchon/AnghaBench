#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  CIDFontType0C ; 
 int /*<<< orphan*/  Font ; 
 int /*<<< orphan*/  FontDescriptor ; 
 int /*<<< orphan*/  Length1 ; 
 int /*<<< orphan*/  Length2 ; 
 int /*<<< orphan*/  Length3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  Type1C ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(fz_context *ctx, pdf_obj *obj)
{
	pdf_obj *o;
	if (o = FUNC1(ctx, obj, FUNC0(Type)), FUNC2(ctx, o, FUNC0(Font)))
		return 1;
	if (o = FUNC1(ctx, obj, FUNC0(Type)), FUNC2(ctx, o, FUNC0(FontDescriptor)))
		return 1;
	if (FUNC1(ctx, obj, FUNC0(Length1)) != NULL)
		return 1;
	if (FUNC1(ctx, obj, FUNC0(Length2)) != NULL)
		return 1;
	if (FUNC1(ctx, obj, FUNC0(Length3)) != NULL)
		return 1;
	if (o = FUNC1(ctx, obj, FUNC0(Subtype)), FUNC2(ctx, o, FUNC0(Type1C)))
		return 1;
	if (o = FUNC1(ctx, obj, FUNC0(Subtype)), FUNC2(ctx, o, FUNC0(CIDFontType0C)))
		return 1;
	return 0;
}