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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {char* signature; int* reserved; int /*<<< orphan*/  filenum; void* attributes; void* group_id; void* user_id; } ;
typedef  TYPE_1__ iso9660_xa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

iso9660_xa_t *
FUNC2 (iso9660_xa_t *_xa, uint16_t uid, uint16_t gid, uint16_t attr, 
	      uint8_t filenum)
{
  FUNC0 (_xa != NULL);
  
  _xa->user_id = FUNC1 (uid);
  _xa->group_id = FUNC1 (gid);
  _xa->attributes = FUNC1 (attr);

  _xa->signature[0] = 'X';
  _xa->signature[1] = 'A';

  _xa->filenum = filenum;

  _xa->reserved[0] 
    = _xa->reserved[1] 
    = _xa->reserved[2] 
    = _xa->reserved[3] 
    = _xa->reserved[4] = 0x00;

  return _xa;
}