#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
typedef  int /*<<< orphan*/  connect_timeout ;
struct TYPE_2__ {int /*<<< orphan*/  agent; int /*<<< orphan*/  connect_timeout; } ;
typedef  TYPE_1__ appinfo_t ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_BAD_ARGUMENTS ; 
 int ERROR_INTERNET_BAD_OPTION_LENGTH ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,void*,int) ; 
#define  INTERNET_OPTION_CONNECT_TIMEOUT 130 
#define  INTERNET_OPTION_REFRESH 129 
#define  INTERNET_OPTION_USER_AGENT 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static DWORD FUNC5(object_header_t *hdr, DWORD option, void *buf, DWORD size)
{
    appinfo_t *ai = (appinfo_t*)hdr;

    switch(option) {
    case INTERNET_OPTION_CONNECT_TIMEOUT:
        FUNC2("INTERNET_OPTION_CONNECT_TIMEOUT\n");

        if(size != sizeof(connect_timeout))
            return ERROR_INTERNET_BAD_OPTION_LENGTH;
        if(!*(ULONG*)buf)
            return ERROR_BAD_ARGUMENTS;

        ai->connect_timeout = *(ULONG*)buf;
        return ERROR_SUCCESS;
    case INTERNET_OPTION_USER_AGENT:
        FUNC3(ai->agent);
        if (!(ai->agent = FUNC4(buf))) return ERROR_OUTOFMEMORY;
        return ERROR_SUCCESS;
    case INTERNET_OPTION_REFRESH:
        FUNC0("INTERNET_OPTION_REFRESH\n");
        return ERROR_SUCCESS;
    }

    return FUNC1(hdr, option, buf, size);
}