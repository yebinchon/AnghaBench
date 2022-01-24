#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* pszVal; } ;
struct TYPE_8__ {TYPE_1__ u; void* vt; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  int /*<<< orphan*/  IMimeMessage ;
typedef  int /*<<< orphan*/  IMimeBody ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HBODY_ROOT ; 
 int /*<<< orphan*/  IID_IMimeBody ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ MIME_E_NOT_FOUND ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PID_HDR_SUBJECT ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ S_OK ; 
 void* VT_LPSTR ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (void*,char const*) ; 
 scalar_t__ FUNC13 (char const*) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const char topic[] = "wine topic";
    HRESULT hr;
    IMimeMessage *msg;
    IMimeBody *body;
    PROPVARIANT prop;

    hr = FUNC7(NULL, &msg);
    FUNC11(hr == S_OK, "ret %08x\n", hr);

    FUNC10(&prop);

    hr = FUNC5(msg, HBODY_ROOT, &IID_IMimeBody, (void**)&body);
    FUNC11(hr == S_OK, "ret %08x\n", hr);

    hr = FUNC1(body, "Subject");
    FUNC11(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    hr = FUNC1(body, FUNC8(PID_HDR_SUBJECT));
    FUNC11(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = FUNC0(FUNC13(topic)+1);
    FUNC12(prop.u.pszVal, topic);
    hr = FUNC4(body, "Subject", 0, &prop);
    FUNC11(hr == S_OK, "ret %08x\n", hr);
    FUNC9(&prop);

    hr = FUNC1(body, "Subject");
    FUNC11(hr == S_OK, "ret %08x\n", hr);

    hr = FUNC2(body, "Subject", 0, &prop);
    FUNC11(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = FUNC0(FUNC13(topic)+1);
    FUNC12(prop.u.pszVal, topic);
    hr = FUNC4(body, FUNC8(PID_HDR_SUBJECT), 0, &prop);
    FUNC11(hr == S_OK, "ret %08x\n", hr);
    FUNC9(&prop);

    hr = FUNC1(body, FUNC8(PID_HDR_SUBJECT));
    FUNC11(hr == S_OK, "ret %08x\n", hr);

    hr = FUNC2(body, FUNC8(PID_HDR_SUBJECT), 0, &prop);
    FUNC11(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    FUNC3(body);
    FUNC6(msg);
}