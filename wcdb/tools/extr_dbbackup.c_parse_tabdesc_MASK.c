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
struct TYPE_3__ {char* table; char* condition; } ;
typedef  TYPE_1__ mm_backup_tabdesc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MMBAK_LOG_ERROR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int g_num_tabdesc ; 
 TYPE_1__* g_tabdesc ; 
 char* g_tabdesc_buffer ; 
 scalar_t__ FUNC9 (long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(const char *path)
{
	FILE *fp = FUNC6(path, "r");
	if (!fp) goto bail;
	
	// get file length
	FUNC7(fp, 0, SEEK_END);
	long file_len = FUNC8(fp) + 1;
	FUNC7(fp, 0, SEEK_SET);
	
	// read whole file into buffer
	g_tabdesc_buffer = (char *) FUNC9(file_len);
	if (!g_tabdesc_buffer) goto bail;
	char *p = g_tabdesc_buffer;
	int count = 0;
	while (!FUNC3(fp) && !FUNC4(fp) && p - g_tabdesc_buffer < file_len)
	{
		char *ret = FUNC5(p, g_tabdesc_buffer + file_len - p, fp);
		if (ret)
		{
			count++;
			char c;
			while ((c = *p++))
			{
				if (c == '\n')
				{
					*(p - 1) = '\0';
					break;
				}
			}
		}
	}
	FUNC2(fp);
	fp = NULL;
	
	// translate strings to tabdesc
	g_tabdesc = (mm_backup_tabdesc *) FUNC0(count, sizeof(mm_backup_tabdesc));
	if (!g_tabdesc) goto bail;
	
	p = g_tabdesc_buffer;
	
	int i;
	for (i = 0; i < count; i++)
	{
		g_tabdesc[i].table = p;
		char c;
		while ((c = *p++))
		{
			if (c == '|')
			{
				*(p - 1) = '\0';
				g_tabdesc[i].condition = p;
			}
		}
	}
	g_num_tabdesc = count;
	return;
		
bail:
	FUNC10(MMBAK_LOG_ERROR, "Cannot parse table descriptor.");
	if (fp) FUNC2(fp);
	FUNC1(1);
}