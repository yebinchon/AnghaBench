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
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ hAdvPack ; 
 void* pAddDelBackupEntry ; 
 void* pAdvInstallFile ; 
 void* pExtractFiles ; 
 void* pExtractFilesW ; 

__attribute__((used)) static void FUNC2(void)
{
    hAdvPack = FUNC1("advpack.dll");

    if (hAdvPack)
    {
        pAddDelBackupEntry = (void *)FUNC0(hAdvPack, "AddDelBackupEntry");
        pExtractFiles = (void *)FUNC0(hAdvPack, "ExtractFiles");
        pExtractFilesW = (void *)FUNC0(hAdvPack, "ExtractFilesW");
        pAdvInstallFile = (void*)FUNC0(hAdvPack, "AdvInstallFile");
    }
}