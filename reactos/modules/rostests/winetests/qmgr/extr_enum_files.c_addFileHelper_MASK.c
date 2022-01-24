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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  URL_UNESCAPE_INPLACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(IBackgroundCopyJob* job,
                             const WCHAR *localName, const WCHAR *remoteName)
{
    DWORD urlSize;
    WCHAR localFile[MAX_PATH];
    WCHAR remoteUrl[MAX_PATH];
    WCHAR remoteFile[MAX_PATH];

    FUNC0(MAX_PATH, localFile);
    FUNC2(localFile, localName);
    FUNC0(MAX_PATH, remoteFile);
    FUNC2(remoteFile, remoteName);
    urlSize = MAX_PATH;
    FUNC3(remoteFile, remoteUrl, &urlSize, 0);
    FUNC4(remoteUrl, NULL, &urlSize, URL_UNESCAPE_INPLACE);
    return FUNC1(job, remoteUrl, localFile);
}