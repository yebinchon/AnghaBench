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
typedef  int /*<<< orphan*/  xps_part ;
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, xps_document *doc, char *base_uri, fz_xml *root, xps_part **image_part, xps_part **profile_part)
{
	char *image_source_att;
	char buf[1024];
	char partname[1024];
	char *image_name;
	char *profile_name;
	char *p;

	image_source_att = FUNC2(root, "ImageSource");
	if (!image_source_att)
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot find image source attribute");

	/* "{ColorConvertedBitmap /Resources/Image.tiff /Resources/Profile.icc}" */
	if (FUNC4(image_source_att, "{ColorConvertedBitmap") == image_source_att)
	{
		image_name = NULL;
		profile_name = NULL;

		FUNC0(buf, image_source_att, sizeof buf);
		p = FUNC3(buf, ' ');
		if (p)
		{
			image_name = p + 1;
			p = FUNC3(p + 1, ' ');
			if (p)
			{
				*p = 0;
				profile_name = p + 1;
				p = FUNC3(p + 1, '}');
				if (p)
					*p = 0;
			}
		}
	}
	else
	{
		image_name = image_source_att;
		profile_name = NULL;
	}

	if (!image_name)
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot find image source");

	if (image_part)
	{
		FUNC6(ctx, doc, partname, base_uri, image_name, sizeof partname);
		*image_part = FUNC5(ctx, doc, partname);
	}

	if (profile_part)
	{
		if (profile_name)
		{
			FUNC6(ctx, doc, partname, base_uri, profile_name, sizeof partname);
			*profile_part = FUNC5(ctx, doc, partname);
		}
		else
			*profile_part = NULL;
	}
}