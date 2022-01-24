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
typedef  int /*<<< orphan*/  shortbuf ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char const*,char const*) ; 
 size_t FUNC7 (char const*) ; 
 char FUNC8 (char) ; 

__attribute__((used)) static void FUNC9(const char *tmpdir, const char *dirname,
                               const char *filename)
{
    char buf[MAX_PATH], shortbuf[MAX_PATH];
    HANDLE hndl;
    size_t i;

    FUNC4(FUNC7(tmpdir) + FUNC7(dirname) + FUNC7(filename) + 2 < sizeof(buf));
    FUNC6(buf,"%s\\%s\\%s",tmpdir,dirname,filename);
    FUNC3(buf,shortbuf,sizeof(shortbuf));
    hndl = FUNC1(shortbuf,GENERIC_READ|GENERIC_WRITE,0,NULL,OPEN_EXISTING,0,NULL);
    FUNC5(hndl!=INVALID_HANDLE_VALUE,"CreateFileA failed (%d)\n",FUNC2());
    FUNC0(hndl);
    /* Now for the real test */
    for(i=0;i<FUNC7(shortbuf);i++)
        if (i % 2)
            shortbuf[i] = FUNC8(shortbuf[i]);
    hndl = FUNC1(shortbuf,GENERIC_READ|GENERIC_WRITE,0,NULL,OPEN_EXISTING,0,NULL);
    FUNC5(hndl!=INVALID_HANDLE_VALUE,"CreateFileA failed (%d)\n",FUNC2());
    FUNC0(hndl);
}