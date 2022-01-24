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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hmod ; 
 int /*<<< orphan*/  myARGC ; 
 int /*<<< orphan*/  myARGV ; 
 void* pAddAccessAllowedAceEx ; 
 void* pAddAccessDeniedAceEx ; 
 void* pAddAuditAccessAceEx ; 
 void* pAddMandatoryAce ; 
 void* pCheckTokenMembership ; 
 void* pConvertSecurityDescriptorToStringSecurityDescriptorA ; 
 void* pConvertStringSecurityDescriptorToSecurityDescriptorA ; 
 void* pConvertStringSecurityDescriptorToSecurityDescriptorW ; 
 void* pConvertStringSidToSidA ; 
 void* pCreateRestrictedToken ; 
 void* pCreateWellKnownSid ; 
 void* pDuplicateTokenEx ; 
 void* pGetAce ; 
 void* pGetAclInformation ; 
 void* pGetExplicitEntriesFromAclW ; 
 void* pGetFileSecurityA ; 
 void* pGetNamedSecurityInfoA ; 
 void* pGetSecurityInfo ; 
 void* pGetSidIdentifierAuthority ; 
 void* pGetSidSubAuthority ; 
 void* pGetSidSubAuthorityCount ; 
 void* pGetWindowsAccountDomainSid ; 
 void* pIsValidSid ; 
 void* pMakeSelfRelativeSD ; 
 void* pNtAccessCheck ; 
 void* pNtCreateFile ; 
 void* pNtQueryObject ; 
 void* pNtSetSecurityObject ; 
 void* pRtlAnsiStringToUnicodeString ; 
 void* pRtlDosPathNameToNtPathName_U ; 
 void* pRtlFreeUnicodeString ; 
 void* pRtlInitAnsiString ; 
 void* pSetEntriesInAclA ; 
 void* pSetEntriesInAclW ; 
 void* pSetFileSecurityA ; 
 void* pSetNamedSecurityInfoA ; 
 void* pSetSecurityDescriptorControl ; 
 void* pSetSecurityInfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
    HMODULE hntdll;

    hntdll = FUNC0("ntdll.dll");
    pNtQueryObject = (void *)FUNC1( hntdll, "NtQueryObject" );
    pNtAccessCheck = (void *)FUNC1( hntdll, "NtAccessCheck" );
    pNtSetSecurityObject = (void *)FUNC1(hntdll, "NtSetSecurityObject");
    pNtCreateFile = (void *)FUNC1(hntdll, "NtCreateFile");
    pRtlDosPathNameToNtPathName_U = (void *)FUNC1(hntdll, "RtlDosPathNameToNtPathName_U");
    pRtlAnsiStringToUnicodeString = (void *)FUNC1(hntdll, "RtlAnsiStringToUnicodeString");
    pRtlInitAnsiString = (void *)FUNC1(hntdll, "RtlInitAnsiString");
    pRtlFreeUnicodeString = (void *)FUNC1(hntdll, "RtlFreeUnicodeString");

    hmod = FUNC0("advapi32.dll");
    pAddAccessAllowedAceEx = (void *)FUNC1(hmod, "AddAccessAllowedAceEx");
    pAddAccessDeniedAceEx = (void *)FUNC1(hmod, "AddAccessDeniedAceEx");
    pAddAuditAccessAceEx = (void *)FUNC1(hmod, "AddAuditAccessAceEx");
    pAddMandatoryAce = (void *)FUNC1(hmod, "AddMandatoryAce");
    pCheckTokenMembership = (void *)FUNC1(hmod, "CheckTokenMembership");
    pConvertStringSecurityDescriptorToSecurityDescriptorA =
        (void *)FUNC1(hmod, "ConvertStringSecurityDescriptorToSecurityDescriptorA" );
    pConvertStringSecurityDescriptorToSecurityDescriptorW =
        (void *)FUNC1(hmod, "ConvertStringSecurityDescriptorToSecurityDescriptorW" );
    pConvertSecurityDescriptorToStringSecurityDescriptorA =
        (void *)FUNC1(hmod, "ConvertSecurityDescriptorToStringSecurityDescriptorA" );
    pGetFileSecurityA = (void *)FUNC1(hmod, "GetFileSecurityA" );
    pSetFileSecurityA = (void *)FUNC1(hmod, "SetFileSecurityA" );
    pCreateWellKnownSid = (void *)FUNC1( hmod, "CreateWellKnownSid" );
    pGetNamedSecurityInfoA = (void *)FUNC1(hmod, "GetNamedSecurityInfoA");
    pSetNamedSecurityInfoA = (void *)FUNC1(hmod, "SetNamedSecurityInfoA");
    pGetSidSubAuthority = (void *)FUNC1(hmod, "GetSidSubAuthority");
    pGetSidSubAuthorityCount = (void *)FUNC1(hmod, "GetSidSubAuthorityCount");
    pIsValidSid = (void *)FUNC1(hmod, "IsValidSid");
    pMakeSelfRelativeSD = (void *)FUNC1(hmod, "MakeSelfRelativeSD");
    pSetEntriesInAclW = (void *)FUNC1(hmod, "SetEntriesInAclW");
    pSetEntriesInAclA = (void *)FUNC1(hmod, "SetEntriesInAclA");
    pSetSecurityDescriptorControl = (void *)FUNC1(hmod, "SetSecurityDescriptorControl");
    pGetSecurityInfo = (void *)FUNC1(hmod, "GetSecurityInfo");
    pSetSecurityInfo = (void *)FUNC1(hmod, "SetSecurityInfo");
    pCreateRestrictedToken = (void *)FUNC1(hmod, "CreateRestrictedToken");
    pConvertStringSidToSidA = (void *)FUNC1(hmod, "ConvertStringSidToSidA");
    pGetAclInformation = (void *)FUNC1(hmod, "GetAclInformation");
    pGetAce = (void *)FUNC1(hmod, "GetAce");
    pGetWindowsAccountDomainSid = (void *)FUNC1(hmod, "GetWindowsAccountDomainSid");
    pGetSidIdentifierAuthority = (void *)FUNC1(hmod, "GetSidIdentifierAuthority");
    pDuplicateTokenEx = (void *)FUNC1(hmod, "DuplicateTokenEx");
    pGetExplicitEntriesFromAclW = (void *)FUNC1(hmod, "GetExplicitEntriesFromAclW");

    myARGC = FUNC2( &myARGV );
}