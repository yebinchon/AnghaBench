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
struct TYPE_4__ {int /*<<< orphan*/  (* Read ) (TYPE_1__*,void*,size_t*) ;} ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ ISeqInStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,size_t*) ; 

SRes FUNC2(ISeqInStream *stream, void *buf, size_t size, SRes errorType)
{
  while (size != 0)
  {
    size_t processed = size;
    FUNC0(stream->Read(stream, buf, &processed));
    if (processed == 0)
      return errorType;
    buf = (void *)((Byte *)buf + processed);
    size -= processed;
  }
  return SZ_OK;
}