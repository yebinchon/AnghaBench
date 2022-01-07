; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_main.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_main.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"secur32.dll\00", align 1
@secdll = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"security.dll\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"InitSecurityInterfaceA\00", align 1
@pInitSecurityInterfaceA = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"EnumerateSecurityPackagesA\00", align 1
@pEnumerateSecurityPackagesA = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"FreeContextBuffer\00", align 1
@pFreeContextBuffer = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"QuerySecurityPackageInfoA\00", align 1
@pQuerySecurityPackageInfoA = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"AcquireCredentialsHandleA\00", align 1
@pAcquireCredentialsHandleA = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"InitializeSecurityContextA\00", align 1
@pInitializeSecurityContextA = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"CompleteAuthToken\00", align 1
@pCompleteAuthToken = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"AcceptSecurityContext\00", align 1
@pAcceptSecurityContext = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"FreeCredentialsHandle\00", align 1
@pFreeCredentialsHandle = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"DeleteSecurityContext\00", align 1
@pDeleteSecurityContext = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"QueryContextAttributesA\00", align 1
@pQueryContextAttributesA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitFunctionPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFunctionPtrs() #0 {
  %1 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %1, i64* @secdll, align 8
  %2 = load i64, i64* @secdll, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 %5, i64* @secdll, align 8
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @secdll, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load i64, i64* @secdll, align 8
  %11 = call i64 @GetProcAddress(i64 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @pInitSecurityInterfaceA, align 8
  %13 = load i64, i64* @secdll, align 8
  %14 = call i64 @GetProcAddress(i64 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @pEnumerateSecurityPackagesA, align 8
  %16 = load i64, i64* @secdll, align 8
  %17 = call i64 @GetProcAddress(i64 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @pFreeContextBuffer, align 8
  %19 = load i64, i64* @secdll, align 8
  %20 = call i64 @GetProcAddress(i64 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @pQuerySecurityPackageInfoA, align 8
  %22 = load i64, i64* @secdll, align 8
  %23 = call i64 @GetProcAddress(i64 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** @pAcquireCredentialsHandleA, align 8
  %25 = load i64, i64* @secdll, align 8
  %26 = call i64 @GetProcAddress(i64 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** @pInitializeSecurityContextA, align 8
  %28 = load i64, i64* @secdll, align 8
  %29 = call i64 @GetProcAddress(i64 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** @pCompleteAuthToken, align 8
  %31 = load i64, i64* @secdll, align 8
  %32 = call i64 @GetProcAddress(i64 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** @pAcceptSecurityContext, align 8
  %34 = load i64, i64* @secdll, align 8
  %35 = call i64 @GetProcAddress(i64 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @pFreeCredentialsHandle, align 8
  %37 = load i64, i64* @secdll, align 8
  %38 = call i64 @GetProcAddress(i64 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** @pDeleteSecurityContext, align 8
  %40 = load i64, i64* @secdll, align 8
  %41 = call i64 @GetProcAddress(i64 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** @pQueryContextAttributesA, align 8
  br label %43

43:                                               ; preds = %9, %6
  ret void
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
