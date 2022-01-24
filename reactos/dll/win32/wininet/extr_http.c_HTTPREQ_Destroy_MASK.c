#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
struct TYPE_10__ {TYPE_1__* DebugInfo; } ;
struct TYPE_8__ {size_t nCustHeaders; TYPE_4__* custHeaders; int /*<<< orphan*/  data_stream; TYPE_4__* statusText; TYPE_4__* version; TYPE_4__* verb; TYPE_4__* path; scalar_t__ proxy; scalar_t__ server; int /*<<< orphan*/  proxyAuthInfo; int /*<<< orphan*/  authInfo; TYPE_2__* session; TYPE_5__ read_section; TYPE_5__ headers_section; scalar_t__ req_file; scalar_t__ hCacheFile; } ;
typedef  TYPE_3__ http_request_t ;
struct TYPE_9__ {struct TYPE_9__* lpszValue; struct TYPE_9__* lpszField; } ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_6__ {scalar_t__* Spare; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(object_header_t *hdr)
{
    http_request_t *request = (http_request_t*) hdr;
    DWORD i;

    FUNC2("\n");

    if(request->hCacheFile)
        FUNC0(request->hCacheFile);
    if(request->req_file)
        FUNC7(request->req_file);

    request->headers_section.DebugInfo->Spare[0] = 0;
    FUNC1( &request->headers_section );
    request->read_section.DebugInfo->Spare[0] = 0;
    FUNC1( &request->read_section );
    FUNC3(&request->session->hdr);

    FUNC4(request->authInfo);
    FUNC4(request->proxyAuthInfo);

    if(request->server)
        FUNC8(request->server);
    if(request->proxy)
        FUNC8(request->proxy);

    FUNC6(request->path);
    FUNC6(request->verb);
    FUNC6(request->version);
    FUNC6(request->statusText);

    for (i = 0; i < request->nCustHeaders; i++)
    {
        FUNC6(request->custHeaders[i].lpszField);
        FUNC6(request->custHeaders[i].lpszValue);
    }
    FUNC5(request->data_stream);
    FUNC6(request->custHeaders);
}