; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_dssetup.c_DsRolepGetBasicInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_dssetup.c_DsRolepGetBasicInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@POLICY_VIEW_LOCAL_INFORMATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"LsarOpenPolicyFailed with NT status %x\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@PolicyAccountDomainInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"LsarQueryInformationPolicy with NT status %x\0A\00", align 1
@DsRole_RoleStandaloneWorkstation = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @DsRolepGetBasicInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DsRolepGetBasicInfo(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = call i32 @RtlZeroMemory(i32* %4, i32 4)
  %11 = load i32, i32* @POLICY_VIEW_LOCAL_INFORMATION, align 4
  %12 = call i32 @LsarOpenPolicy(i32* null, i32* %4, i32 %11, i32* %7)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @NT_SUCCESS(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @LsaNtStatusToWinError(i32 %17)
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PolicyAccountDomainInformation, align 4
  %24 = call i32 @LsarQueryInformationPolicy(i32 %22, i32 %23, %struct.TYPE_10__** %6)
  store i32 %24, i32* %9, align 4
  %25 = call i32 @LsarClose(i32* %7)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @NT_SUCCESS(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @LsaNtStatusToWinError(i32 %30)
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %33, i32* %2, align 4
  br label %76

34:                                               ; preds = %21
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 4, %39
  %41 = add i64 %40, 4
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call %struct.TYPE_11__* @midl_user_allocate(i64 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = icmp eq %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @PolicyAccountDomainInformation, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = call i32 @LsaIFree_LSAPR_POLICY_INFORMATION(i32 %47, %struct.TYPE_10__* %48)
  %50 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %50, i32* %2, align 4
  br label %76

51:                                               ; preds = %34
  %52 = load i32, i32* @DsRole_RoleStandaloneWorkstation, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = ptrtoint %struct.TYPE_11__* %55 to i64
  %57 = add i64 %56, 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wcscpy(i64 %62, i32 %67)
  %69 = load i32, i32* @PolicyAccountDomainInformation, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = call i32 @LsaIFree_LSAPR_POLICY_INFORMATION(i32 %69, %struct.TYPE_10__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = ptrtoint %struct.TYPE_11__* %72 to i64
  %74 = load i64*, i64** %3, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %51, %46, %29, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @LsarOpenPolicy(i32*, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @LsaNtStatusToWinError(i32) #1

declare dso_local i32 @LsarQueryInformationPolicy(i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @LsarClose(i32*) #1

declare dso_local %struct.TYPE_11__* @midl_user_allocate(i64) #1

declare dso_local i32 @LsaIFree_LSAPR_POLICY_INFORMATION(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @wcscpy(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
