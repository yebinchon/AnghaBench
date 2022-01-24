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
struct TYPE_3__ {unsigned char type; unsigned char* data; size_t size; int /*<<< orphan*/  description; int /*<<< orphan*/  mime_type; } ;
typedef  TYPE_1__ mpg123_picture ;
typedef  int /*<<< orphan*/  mpg123_handle ;

/* Variables and functions */
 scalar_t__ NOQUIET ; 
 scalar_t__ VERBOSE4 ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char,unsigned char*,int,scalar_t__) ; 
 scalar_t__ FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,size_t) ; 
 unsigned char mpg123_id3_enc_max ; 
 unsigned char* FUNC8 (unsigned char*,unsigned char,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC10(mpg123_handle *fr, unsigned char *realdata, size_t realsize)
{
	unsigned char encoding = realdata[0];
	mpg123_picture *i = NULL;
	unsigned char* workpoint;
	if(realsize == 0)
	{
		FUNC1("Empty id3 data!");
		return;
	}
	if(encoding > mpg123_id3_enc_max)
	{
		if(NOQUIET)
			FUNC3("Unknown text encoding %u, I take no chances, sorry!", encoding);
		return;
	}
	if(VERBOSE4) FUNC4(stderr, "Note: Storing picture from APIC frame.\n");
	/* decompose realdata accordingly */
	i = FUNC0(fr);
	if(i == NULL)
	{
		if(NOQUIET) FUNC2("Unable to attach new picture!");
		return;
	}
	realdata++; realsize--;
	/* get mime type (encoding is always latin-1) */
	workpoint = FUNC8(realdata, 0, realsize);
	if (workpoint == NULL) {
		FUNC9(fr);
		if (NOQUIET) FUNC2("Unable to get mime type for picture; skipping picture.");
		return;
	}
	FUNC5(&i->mime_type, 0, realdata, workpoint - realdata, NOQUIET);
	realsize -= workpoint - realdata;
	realdata = workpoint;
	/* get picture type */
	i->type = realdata[0];
	realdata++; realsize--;
	/* get description (encoding is encoding) */
	workpoint = FUNC8(realdata, encoding, realsize);
	if (workpoint == NULL) {
		if (NOQUIET) FUNC2("Unable to get description for picture; skipping picture.");
		FUNC9(fr);
		return;
	}
	FUNC5(&i->description, encoding, realdata, workpoint - realdata, NOQUIET);
	realsize -= workpoint - realdata;
	if (realsize == 0) {
		if (NOQUIET) FUNC2("No picture data defined; skipping picture.");
		FUNC9(fr);
		return;
	}
	/* store_id3_picture(i, picture, realsize, NOQUIET)) */
	i->data = (unsigned char*)FUNC6(realsize);
	if (i->data == NULL) {
		if (NOQUIET) FUNC2("Unable to allocate memory for picture; skipping picture");
		FUNC9(fr);
		return;
	}
	FUNC7(i->data, workpoint, realsize);
	i->size = realsize;
	if(VERBOSE4) FUNC4(stderr, "Note: ID3v2 APIC picture frame of type: %d\n", i->type);
}