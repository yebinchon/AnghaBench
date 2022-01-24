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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IMimeMessage ;
typedef  int /*<<< orphan*/  IMimeBody ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HBODY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HBODY_ROOT ; 
 int /*<<< orphan*/  IET_BASE64 ; 
 int /*<<< orphan*/  IET_BINARY ; 
 int /*<<< orphan*/  IET_QP ; 
 int /*<<< orphan*/  IID_IMimeBody ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mhtml_page1 ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,int) ; 

__attribute__((used)) static void FUNC14(void)
{
    IMimeMessage *mime_message;
    IMimeBody *mime_body;
    HBODY *body_list;
    IStream *stream;
    ULONG count;
    HRESULT hres;

    hres = FUNC9(NULL, &mime_message);
    FUNC11(hres == S_OK, "MimeOleCreateMessage failed: %08x\n", hres);

    stream = FUNC10(mhtml_page1);
    hres = FUNC6(mime_message, stream);
    FUNC8(stream);
    FUNC11(hres == S_OK, "Load failed: %08x\n", hres);

    hres = FUNC4(mime_message, HBODY_ROOT, TRUE, &count);
    FUNC11(hres == S_OK, "CountBodies failed: %08x\n", hres);
    FUNC11(count == 3, "got %d\n", count);

    hres = FUNC5(mime_message, &count, &body_list);
    FUNC11(hres == S_OK, "GetAttachments failed: %08x\n", hres);
    FUNC11(count == 2, "count = %u\n", count);

    hres = FUNC3(mime_message, body_list[0], &IID_IMimeBody, (void**)&mime_body);
    FUNC11(hres == S_OK, "BindToObject failed: %08x\n", hres);

    hres = FUNC1(mime_body, IET_BINARY, &stream);
    FUNC11(hres == S_OK, "GetData failed: %08x\n", hres);
    FUNC13(stream, S_OK, "<HTML></HTML>", -1);
    FUNC8(stream);

    FUNC12(mime_body, IET_QP);

    FUNC2(mime_body);

    hres = FUNC3(mime_message, body_list[1], &IID_IMimeBody, (void**)&mime_body);
    FUNC11(hres == S_OK, "BindToObject failed: %08x\n", hres);

    FUNC12(mime_body, IET_BASE64);

    hres = FUNC1(mime_body, IET_BINARY, &stream);
    FUNC11(hres == S_OK, "GetData failed: %08x\n", hres);
    FUNC13(stream, S_OK, "Test", -1);
    FUNC8(stream);

    FUNC2(mime_body);

    FUNC0(body_list);

    FUNC7(mime_message);
}