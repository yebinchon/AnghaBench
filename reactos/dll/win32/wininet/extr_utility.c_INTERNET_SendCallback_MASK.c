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
struct TYPE_3__ {int dwInternalFlags; int /*<<< orphan*/  hInternet; int /*<<< orphan*/  (* lpfnStatusCB ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int) ;} ;
typedef  TYPE_1__ object_header_t ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int INET_CALLBACKW ; 
#define  INTERNET_STATUS_CONNECTED_TO_SERVER 132 
#define  INTERNET_STATUS_CONNECTING_TO_SERVER 131 
#define  INTERNET_STATUS_NAME_RESOLVED 130 
#define  INTERNET_STATUS_REDIRECT 129 
#define  INTERNET_STATUS_RESOLVING_NAME 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int) ; 

void FUNC10(object_header_t *hdr, DWORD_PTR context, DWORD status, void *info, DWORD info_len)
{
    void *new_info = info;

    if( !hdr->lpfnStatusCB )
        return;

    /* the IE5 version of wininet does not
       send callbacks if dwContext is zero */
    if(!context)
        return;

    switch(status) {
    case INTERNET_STATUS_NAME_RESOLVED:
    case INTERNET_STATUS_CONNECTING_TO_SERVER:
    case INTERNET_STATUS_CONNECTED_TO_SERVER:
        new_info = FUNC3(info_len);
        if(new_info)
            FUNC7(new_info, info, info_len);
        break;
    case INTERNET_STATUS_RESOLVING_NAME:
    case INTERNET_STATUS_REDIRECT:
        if(hdr->dwInternalFlags & INET_CALLBACKW) {
            new_info = FUNC5(info);
            break;
        }else {
            new_info = FUNC6(info);
            info_len = FUNC8(new_info)+1;
            break;
        }
    }
    
    FUNC0(" callback(%p) (%p (%p), %08lx, %d (%s), %s, %d)\n",
	  hdr->lpfnStatusCB, hdr->hInternet, hdr, context, status, FUNC2(status),
	  FUNC1(status, new_info), info_len);
    
    hdr->lpfnStatusCB(hdr->hInternet, context, status, new_info, info_len);

    FUNC0(" end callback().\n");

    if(new_info != info)
        FUNC4(new_info);
}