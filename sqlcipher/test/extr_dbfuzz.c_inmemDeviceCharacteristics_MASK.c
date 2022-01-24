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
typedef  int /*<<< orphan*/  sqlite3_file ;

/* Variables and functions */
 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ; 
 int SQLITE_IOCAP_SAFE_APPEND ; 
 int SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN ; 

__attribute__((used)) static int FUNC0(sqlite3_file *pFile){
  return
      SQLITE_IOCAP_SAFE_APPEND |
      SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN |
      SQLITE_IOCAP_POWERSAFE_OVERWRITE;
}