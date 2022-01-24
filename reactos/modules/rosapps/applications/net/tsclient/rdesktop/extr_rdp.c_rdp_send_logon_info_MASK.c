#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int uint32 ;
typedef  int time_t ;
struct TYPE_7__ {int server_rdp_version; int rdp5_performanceflags; int /*<<< orphan*/  use_rdp5; scalar_t__ encryption; } ;
typedef  int /*<<< orphan*/ * STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int RDP_LOGON_AUTO ; 
 int RDP_LOGON_BLOB ; 
 int SEC_ENCRYPT ; 
 int SEC_LOGON_INFO ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*) ; 

__attribute__((used)) static BOOL
FUNC15(RDPCLIENT * This, uint32 flags, wchar_t *domain, wchar_t *user,
		    wchar_t *password, wchar_t *program, wchar_t *directory)
{
	wchar_t *ipaddr = FUNC12(This);
	int len_domain = 2 * (int)FUNC14(domain);
	int len_user = 2 * (int)FUNC14(user);
	int len_password = 2 * (int)FUNC14(password);
	int len_program = 2 * (int)FUNC14(program);
	int len_directory = 2 * (int)FUNC14(directory);
	int len_ip = 2 * (int)FUNC14(ipaddr);
	int len_dll = 2 * (int)FUNC14(L"C:\\WINNT\\System32\\mstscax.dll");
	int packetlen = 0;
	uint32 sec_flags = This->encryption ? (SEC_LOGON_INFO | SEC_ENCRYPT) : SEC_LOGON_INFO;
	STREAM s;
	time_t t = FUNC13(NULL);
	time_t tzone;

	if (!This->use_rdp5 || 1 == This->server_rdp_version)
	{
		FUNC0(("Sending RDP4-style Logon packet\n"));

		s = FUNC10(This, sec_flags, 18 + len_domain + len_user + len_password
			     + len_program + len_directory + 10);

		if(s == NULL)
			return False;

		FUNC5(s, 0);
		FUNC6(s, flags);
		FUNC4(s, len_domain);
		FUNC4(s, len_user);
		FUNC4(s, len_password);
		FUNC4(s, len_program);
		FUNC4(s, len_directory);
		FUNC8(This, s, domain, len_domain);
		FUNC8(This, s, user, len_user);
		FUNC8(This, s, password, len_password);
		FUNC8(This, s, program, len_program);
		FUNC8(This, s, directory, len_directory);
	}
	else
	{

		flags |= RDP_LOGON_BLOB;
		FUNC0(("Sending RDP5-style Logon packet\n"));
		packetlen = 4 +	/* Unknown uint32 */
			4 +	/* flags */
			2 +	/* len_domain */
			2 +	/* len_user */
			(flags & RDP_LOGON_AUTO ? 2 : 0) +	/* len_password */
			(flags & RDP_LOGON_BLOB ? 2 : 0) +	/* Length of BLOB */
			2 +	/* len_program */
			2 +	/* len_directory */
			(0 < len_domain ? len_domain : 2) +	/* domain */
			len_user + (flags & RDP_LOGON_AUTO ? len_password : 0) + 0 +	/* We have no 512 byte BLOB. Perhaps we must? */
			(flags & RDP_LOGON_BLOB && !(flags & RDP_LOGON_AUTO) ? 2 : 0) +	/* After the BLOB is a unknown int16. If there is a BLOB, that is. */
			(0 < len_program ? len_program : 2) + (0 < len_directory ? len_directory : 2) + 2 +	/* Unknown (2) */
			2 +	/* Client ip length */
			len_ip +	/* Client ip */
			2 +	/* DLL string length */
			len_dll +	/* DLL string */
			2 +	/* Unknown */
			2 +	/* Unknown */
			64 +	/* Time zone #0 */
			2 +	/* Unknown */
			64 +	/* Time zone #1 */
			32;	/* Unknown */

		s = FUNC10(This, sec_flags, packetlen);
		FUNC0(("Called sec_init with packetlen %d\n", packetlen));

		if(s == NULL)
			return False;

		FUNC5(s, 0);	/* Unknown */
		FUNC6(s, flags);
		FUNC4(s, len_domain);
		FUNC4(s, len_user);
		if (flags & RDP_LOGON_AUTO)
		{
			FUNC4(s, len_password);

		}
		if (flags & RDP_LOGON_BLOB && !(flags & RDP_LOGON_AUTO))
		{
			FUNC4(s, 0);
		}
		FUNC4(s, len_program);
		FUNC4(s, len_directory);
		if (0 < len_domain)
			FUNC8(This, s, domain, len_domain);
		else
			FUNC4(s, 0);
		FUNC8(This, s, user, len_user);
		if (flags & RDP_LOGON_AUTO)
		{
			FUNC8(This, s, password, len_password);
		}
		if (flags & RDP_LOGON_BLOB && !(flags & RDP_LOGON_AUTO))
		{
			FUNC4(s, 0);
		}
		if (0 < len_program)
		{
			FUNC8(This, s, program, len_program);

		}
		else
		{
			FUNC4(s, 0);
		}
		if (0 < len_directory)
		{
			FUNC8(This, s, directory, len_directory);
		}
		else
		{
			FUNC4(s, 0);
		}
		FUNC4(s, 2);
		FUNC4(s, len_ip + 2);	/* Length of client ip */
		FUNC8(This, s, ipaddr, len_ip);
		FUNC4(s, len_dll + 2);
		FUNC8(This, s, L"C:\\WINNT\\System32\\mstscax.dll", len_dll);

		tzone = (FUNC3(FUNC1(&t)) - FUNC3(FUNC2(&t))) / 60;
		FUNC6(s, (uint32)tzone);

		FUNC8(This, s, L"GTB, normaltid", 2 * (int)FUNC14(L"GTB, normaltid"));
		FUNC7(s, 62 - 2 * FUNC14(L"GTB, normaltid"));

		FUNC6(s, 0x0a0000);
		FUNC6(s, 0x050000);
		FUNC6(s, 3);
		FUNC6(s, 0);
		FUNC6(s, 0);

		FUNC8(This, s, L"GTB, sommartid", 2 * (int)FUNC14(L"GTB, sommartid"));
		FUNC7(s, 62 - 2 * FUNC14(L"GTB, sommartid"));

		FUNC6(s, 0x30000);
		FUNC6(s, 0x050000);
		FUNC6(s, 2);
		FUNC5(s, 0);
		FUNC6(s, 0xffffffc4);
		FUNC6(s, 0xfffffffe);
		FUNC6(s, This->rdp5_performanceflags);
		FUNC5(s, 0);


	}
	FUNC9(s);
	return FUNC11(This, s, sec_flags);
}