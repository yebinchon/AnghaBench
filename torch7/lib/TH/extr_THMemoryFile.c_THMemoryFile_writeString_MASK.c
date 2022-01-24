#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  isWritable; } ;
struct TYPE_7__ {int position; int size; TYPE_2__* storage; TYPE_1__ file; } ;
struct TYPE_6__ {char* data; } ;
typedef  TYPE_3__ THMemoryFile ;
typedef  int /*<<< orphan*/  THFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static size_t FUNC3(THFile *self, const char *str, size_t size)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  FUNC0(mfself->storage != NULL, 1, "attempt to use a closed file");
  FUNC0(mfself->file.isWritable, 1, "attempt to write in a read-only file");

  FUNC1(mfself, mfself->position+size);
  FUNC2(mfself->storage->data+mfself->position, str, size);
  mfself->position += size;
  if(mfself->position > mfself->size)
  {
    mfself->size = mfself->position;
    mfself->storage->data[mfself->size] = '\0';
  }

  return size;
}