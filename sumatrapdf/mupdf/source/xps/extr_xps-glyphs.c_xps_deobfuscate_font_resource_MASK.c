#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ xps_part ;
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (unsigned char) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, xps_document *doc, xps_part *part)
{
	unsigned char buf[33];
	unsigned char key[16];
	unsigned char *data;
	size_t size;
	char *p;
	int i;

	size = FUNC0(ctx, part->data, &data);
	if (size < 32)
	{
		FUNC1(ctx, "insufficient data for font deobfuscation");
		return;
	}

	p = FUNC3(part->name, '/');
	if (!p)
		p = part->name;

	for (i = 0; i < 32 && *p; p++)
	{
		if (FUNC2(*p))
			buf[i++] = *p;
	}
	buf[i] = 0;

	if (i != 32)
	{
		FUNC1(ctx, "cannot extract GUID from obfuscated font part name");
		return;
	}

	for (i = 0; i < 16; i++)
		key[i] = FUNC4(buf[i*2+0]) * 16 + FUNC4(buf[i*2+1]);

	for (i = 0; i < 16; i++)
	{
		data[i] ^= key[15-i];
		data[i+16] ^= key[15-i];
	}
}