#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ xmlwriteroutput ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_ISequentialStream ; 
 int /*<<< orphan*/  IID_IStream ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline HRESULT FUNC2(xmlwriteroutput *writeroutput)
{
    HRESULT hr;

    FUNC1(writeroutput);
    hr = FUNC0(writeroutput->output, &IID_IStream, (void**)&writeroutput->stream);
    if (hr != S_OK)
        hr = FUNC0(writeroutput->output, &IID_ISequentialStream, (void**)&writeroutput->stream);

    return hr;
}