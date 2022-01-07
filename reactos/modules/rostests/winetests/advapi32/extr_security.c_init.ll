; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NtQueryObject\00", align 1
@pNtQueryObject = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"NtAccessCheck\00", align 1
@pNtAccessCheck = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"NtSetSecurityObject\00", align 1
@pNtSetSecurityObject = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"NtCreateFile\00", align 1
@pNtCreateFile = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"RtlDosPathNameToNtPathName_U\00", align 1
@pRtlDosPathNameToNtPathName_U = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"RtlAnsiStringToUnicodeString\00", align 1
@pRtlAnsiStringToUnicodeString = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"RtlInitAnsiString\00", align 1
@pRtlInitAnsiString = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"RtlFreeUnicodeString\00", align 1
@pRtlFreeUnicodeString = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@hmod = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"AddAccessAllowedAceEx\00", align 1
@pAddAccessAllowedAceEx = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"AddAccessDeniedAceEx\00", align 1
@pAddAccessDeniedAceEx = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"AddAuditAccessAceEx\00", align 1
@pAddAuditAccessAceEx = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"AddMandatoryAce\00", align 1
@pAddMandatoryAce = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"CheckTokenMembership\00", align 1
@pCheckTokenMembership = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"ConvertStringSecurityDescriptorToSecurityDescriptorA\00", align 1
@pConvertStringSecurityDescriptorToSecurityDescriptorA = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"ConvertStringSecurityDescriptorToSecurityDescriptorW\00", align 1
@pConvertStringSecurityDescriptorToSecurityDescriptorW = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [53 x i8] c"ConvertSecurityDescriptorToStringSecurityDescriptorA\00", align 1
@pConvertSecurityDescriptorToStringSecurityDescriptorA = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"GetFileSecurityA\00", align 1
@pGetFileSecurityA = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"SetFileSecurityA\00", align 1
@pSetFileSecurityA = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"CreateWellKnownSid\00", align 1
@pCreateWellKnownSid = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"GetNamedSecurityInfoA\00", align 1
@pGetNamedSecurityInfoA = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"SetNamedSecurityInfoA\00", align 1
@pSetNamedSecurityInfoA = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [19 x i8] c"GetSidSubAuthority\00", align 1
@pGetSidSubAuthority = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [24 x i8] c"GetSidSubAuthorityCount\00", align 1
@pGetSidSubAuthorityCount = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"IsValidSid\00", align 1
@pIsValidSid = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"MakeSelfRelativeSD\00", align 1
@pMakeSelfRelativeSD = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"SetEntriesInAclW\00", align 1
@pSetEntriesInAclW = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"SetEntriesInAclA\00", align 1
@pSetEntriesInAclA = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [29 x i8] c"SetSecurityDescriptorControl\00", align 1
@pSetSecurityDescriptorControl = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [16 x i8] c"GetSecurityInfo\00", align 1
@pGetSecurityInfo = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"SetSecurityInfo\00", align 1
@pSetSecurityInfo = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [22 x i8] c"CreateRestrictedToken\00", align 1
@pCreateRestrictedToken = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [23 x i8] c"ConvertStringSidToSidA\00", align 1
@pConvertStringSidToSidA = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [18 x i8] c"GetAclInformation\00", align 1
@pGetAclInformation = common dso_local global i8* null, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"GetAce\00", align 1
@pGetAce = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [27 x i8] c"GetWindowsAccountDomainSid\00", align 1
@pGetWindowsAccountDomainSid = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [26 x i8] c"GetSidIdentifierAuthority\00", align 1
@pGetSidIdentifierAuthority = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"DuplicateTokenEx\00", align 1
@pDuplicateTokenEx = common dso_local global i8* null, align 8
@.str.39 = private unnamed_addr constant [27 x i8] c"GetExplicitEntriesFromAclW\00", align 1
@pGetExplicitEntriesFromAclW = common dso_local global i8* null, align 8
@myARGV = common dso_local global i32 0, align 4
@myARGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i64 @GetProcAddress(i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** @pNtQueryObject, align 8
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @pNtAccessCheck, align 8
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @GetProcAddress(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pNtSetSecurityObject, align 8
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pNtCreateFile, align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @GetProcAddress(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pRtlDosPathNameToNtPathName_U, align 8
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @GetProcAddress(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @pRtlAnsiStringToUnicodeString, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @GetProcAddress(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @pRtlInitAnsiString, align 8
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @GetProcAddress(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @pRtlFreeUnicodeString, align 8
  %27 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 %27, i32* @hmod, align 4
  %28 = load i32, i32* @hmod, align 4
  %29 = call i64 @GetProcAddress(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** @pAddAccessAllowedAceEx, align 8
  %31 = load i32, i32* @hmod, align 4
  %32 = call i64 @GetProcAddress(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** @pAddAccessDeniedAceEx, align 8
  %34 = load i32, i32* @hmod, align 4
  %35 = call i64 @GetProcAddress(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @pAddAuditAccessAceEx, align 8
  %37 = load i32, i32* @hmod, align 4
  %38 = call i64 @GetProcAddress(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** @pAddMandatoryAce, align 8
  %40 = load i32, i32* @hmod, align 4
  %41 = call i64 @GetProcAddress(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** @pCheckTokenMembership, align 8
  %43 = load i32, i32* @hmod, align 4
  %44 = call i64 @GetProcAddress(i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** @pConvertStringSecurityDescriptorToSecurityDescriptorA, align 8
  %46 = load i32, i32* @hmod, align 4
  %47 = call i64 @GetProcAddress(i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** @pConvertStringSecurityDescriptorToSecurityDescriptorW, align 8
  %49 = load i32, i32* @hmod, align 4
  %50 = call i64 @GetProcAddress(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0))
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** @pConvertSecurityDescriptorToStringSecurityDescriptorA, align 8
  %52 = load i32, i32* @hmod, align 4
  %53 = call i64 @GetProcAddress(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** @pGetFileSecurityA, align 8
  %55 = load i32, i32* @hmod, align 4
  %56 = call i64 @GetProcAddress(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** @pSetFileSecurityA, align 8
  %58 = load i32, i32* @hmod, align 4
  %59 = call i64 @GetProcAddress(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** @pCreateWellKnownSid, align 8
  %61 = load i32, i32* @hmod, align 4
  %62 = call i64 @GetProcAddress(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** @pGetNamedSecurityInfoA, align 8
  %64 = load i32, i32* @hmod, align 4
  %65 = call i64 @GetProcAddress(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** @pSetNamedSecurityInfoA, align 8
  %67 = load i32, i32* @hmod, align 4
  %68 = call i64 @GetProcAddress(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** @pGetSidSubAuthority, align 8
  %70 = load i32, i32* @hmod, align 4
  %71 = call i64 @GetProcAddress(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** @pGetSidSubAuthorityCount, align 8
  %73 = load i32, i32* @hmod, align 4
  %74 = call i64 @GetProcAddress(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** @pIsValidSid, align 8
  %76 = load i32, i32* @hmod, align 4
  %77 = call i64 @GetProcAddress(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** @pMakeSelfRelativeSD, align 8
  %79 = load i32, i32* @hmod, align 4
  %80 = call i64 @GetProcAddress(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** @pSetEntriesInAclW, align 8
  %82 = load i32, i32* @hmod, align 4
  %83 = call i64 @GetProcAddress(i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** @pSetEntriesInAclA, align 8
  %85 = load i32, i32* @hmod, align 4
  %86 = call i64 @GetProcAddress(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** @pSetSecurityDescriptorControl, align 8
  %88 = load i32, i32* @hmod, align 4
  %89 = call i64 @GetProcAddress(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** @pGetSecurityInfo, align 8
  %91 = load i32, i32* @hmod, align 4
  %92 = call i64 @GetProcAddress(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** @pSetSecurityInfo, align 8
  %94 = load i32, i32* @hmod, align 4
  %95 = call i64 @GetProcAddress(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** @pCreateRestrictedToken, align 8
  %97 = load i32, i32* @hmod, align 4
  %98 = call i64 @GetProcAddress(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0))
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** @pConvertStringSidToSidA, align 8
  %100 = load i32, i32* @hmod, align 4
  %101 = call i64 @GetProcAddress(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** @pGetAclInformation, align 8
  %103 = load i32, i32* @hmod, align 4
  %104 = call i64 @GetProcAddress(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** @pGetAce, align 8
  %106 = load i32, i32* @hmod, align 4
  %107 = call i64 @GetProcAddress(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0))
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** @pGetWindowsAccountDomainSid, align 8
  %109 = load i32, i32* @hmod, align 4
  %110 = call i64 @GetProcAddress(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0))
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** @pGetSidIdentifierAuthority, align 8
  %112 = load i32, i32* @hmod, align 4
  %113 = call i64 @GetProcAddress(i32 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** @pDuplicateTokenEx, align 8
  %115 = load i32, i32* @hmod, align 4
  %116 = call i64 @GetProcAddress(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0))
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** @pGetExplicitEntriesFromAclW, align 8
  %118 = call i32 @winetest_get_mainargs(i32* @myARGV)
  store i32 %118, i32* @myARGC, align 4
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @winetest_get_mainargs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
