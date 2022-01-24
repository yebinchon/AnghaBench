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

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void){
  unsigned char *aData;
  aData = FUNC0(0, 100, 0);
  FUNC2("Decoded:\n");
  FUNC1(aData, 16, 2, "Database page size");
  FUNC1(aData, 18, 1, "File format write version");
  FUNC1(aData, 19, 1, "File format read version");
  FUNC1(aData, 20, 1, "Reserved space at end of page");
  FUNC1(aData, 24, 4, "File change counter");
  FUNC1(aData, 28, 4, "Size of database in pages");
  FUNC1(aData, 32, 4, "Page number of first freelist page");
  FUNC1(aData, 36, 4, "Number of freelist pages");
  FUNC1(aData, 40, 4, "Schema cookie");
  FUNC1(aData, 44, 4, "Schema format version");
  FUNC1(aData, 48, 4, "Default page cache size");
  FUNC1(aData, 52, 4, "Largest auto-vac root page");
  FUNC1(aData, 56, 4, "Text encoding");
  FUNC1(aData, 60, 4, "User version");
  FUNC1(aData, 64, 4, "Incremental-vacuum mode");
  FUNC1(aData, 68, 4, "Application ID");
  FUNC1(aData, 72, 4, "meta[8]");
  FUNC1(aData, 76, 4, "meta[9]");
  FUNC1(aData, 80, 4, "meta[10]");
  FUNC1(aData, 84, 4, "meta[11]");
  FUNC1(aData, 88, 4, "meta[12]");
  FUNC1(aData, 92, 4, "Change counter for version number");
  FUNC1(aData, 96, 4, "SQLite version number");
}