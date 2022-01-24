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
typedef  scalar_t__ LONG_PTR ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ XmlReadState_EndOfFile ; 
 int /*<<< orphan*/  XmlReaderProperty_ReadState ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(IXmlReader *reader, BOOL eof)
{
    LONG_PTR state;
    HRESULT hr;

    FUNC2(FUNC1(reader) == eof, "Unexpected IsEOF() result\n");
    hr = FUNC0(reader, XmlReaderProperty_ReadState, &state);
    FUNC2(hr == S_OK, "GetProperty() failed, %#x\n", hr);
    FUNC2((state == XmlReadState_EndOfFile) == eof, "Unexpected EndOfFile state %ld\n", state);
}