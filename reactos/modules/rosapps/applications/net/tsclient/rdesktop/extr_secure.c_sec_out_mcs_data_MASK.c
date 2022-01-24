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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_8__ {int num_channels; int width; int height; int keylayout; int keyboard_type; int keyboard_subtype; int keyboard_functionkeys; int server_depth; TYPE_2__* channel_defs; TYPE_1__* channels; scalar_t__ encryption; scalar_t__ console_session; scalar_t__ use_rdp5; } ;
struct TYPE_7__ {int /*<<< orphan*/  options; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SEC_TAG_CLI_4 ; 
 int SEC_TAG_CLI_CHANNELS ; 
 int SEC_TAG_CLI_CRYPT ; 
 int SEC_TAG_CLI_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(RDPCLIENT * This, STREAM s, wchar_t * hostname)
{
	int hostlen = 2 * (int)FUNC11(hostname);
	int length = 158 + 76 + 12 + 4;
	unsigned int i;

	if (This->num_channels > 0)
		length += This->num_channels * 12 + 8;

	if (hostlen > 30)
		hostlen = 30;

	/* Generic Conference Control (T.124) ConferenceCreateRequest */
	FUNC1(s, 5);
	FUNC1(s, 0x14);
	FUNC6(s, 0x7c);
	FUNC1(s, 1);

	FUNC1(s, (length | 0x8000));	/* remaining length */

	FUNC1(s, 8);	/* length? */
	FUNC1(s, 16);
	FUNC6(s, 0);
	FUNC2(s, 0xc001);
	FUNC6(s, 0);

	FUNC5(s, 0x61637544);	/* OEM ID: "Duca", as in Ducati. */
	FUNC1(s, ((length - 14) | 0x8000));	/* remaining length */

	/* Client information */
	FUNC2(s, SEC_TAG_CLI_INFO);
	FUNC2(s, 212);	/* length */
	FUNC2(s, This->use_rdp5 ? 4 : 1);	/* RDP version. 1 == RDP4, 4 == RDP5. */
	FUNC2(s, 8);
	FUNC2(s, This->width);
	FUNC2(s, This->height);
	FUNC2(s, 0xca01);
	FUNC2(s, 0xaa03);
	FUNC5(s, This->keylayout);
	FUNC5(s, 2600);	/* Client build. We are now 2600 compatible :-) */

	/* Unicode name of client, padded to 32 bytes */
	FUNC9(This, s, hostname, hostlen);
	FUNC8(s, 30 - hostlen);

	/* See
	   http://msdn.microsoft.com/library/default.asp?url=/library/en-us/wceddk40/html/cxtsksupportingremotedesktopprotocol.asp */
	FUNC5(s, This->keyboard_type);
	FUNC5(s, This->keyboard_subtype);
	FUNC5(s, This->keyboard_functionkeys);
	FUNC8(s, 64);	/* reserved? 4 + 12 doublewords */
	FUNC2(s, 0xca01);	/* colour depth? */
	FUNC2(s, 1);

	FUNC3(s, 0);
	FUNC6(s, This->server_depth);
	FUNC2(s, 0x0700);
	FUNC6(s, 0);
	FUNC5(s, 1);
	FUNC8(s, 64);	/* End of client info */

	FUNC2(s, SEC_TAG_CLI_4);
	FUNC2(s, 12);
	FUNC5(s, This->console_session ? 0xb : 9);
	FUNC3(s, 0);

	/* Client encryption settings */
	FUNC2(s, SEC_TAG_CLI_CRYPT);
	FUNC2(s, 12);	/* length */
	FUNC5(s, This->encryption ? 0x3 : 0);	/* encryption supported, 128-bit supported */
	FUNC3(s, 0);	/* Unknown */

	FUNC0(("This->num_channels is %d\n", This->num_channels));
	if (This->num_channels > 0)
	{
		FUNC2(s, SEC_TAG_CLI_CHANNELS);
		FUNC2(s, This->num_channels * 12 + 8);	/* length */
		FUNC5(s, This->num_channels);	/* number of virtual channels */
		for (i = 0; i < This->num_channels; i++)
		{
			FUNC0(("Requesting channel %s\n", This->channels[i].name));
			FUNC7(s, This->channel_defs[i].name, 8);
			FUNC4(s, This->channel_defs[i].options);
		}
	}

	FUNC10(s);
}