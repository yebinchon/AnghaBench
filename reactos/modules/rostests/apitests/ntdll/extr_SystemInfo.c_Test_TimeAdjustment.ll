; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_SystemInfo.c_Test_TimeAdjustment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_SystemInfo.c_Test_TimeAdjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SystemTimeAdjustmentInformation = common dso_local global i32 0, align 4
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i64 0, align 8
@SE_SYSTEMTIME_PRIVILEGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot acquire SeSystemTimePrivilege\0A\00", align 1
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@STATUS_INVALID_PARAMETER_2 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"RtlAdjustPrivilege returned %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_TimeAdjustment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_TimeAdjustment() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %10 = call i64 @NtQuerySystemInformation(i32 %9, %struct.TYPE_6__* %1, i32 12, i32* %5)
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %12 = call i64 @NtSetSystemInformation(i32 %11, %struct.TYPE_5__* %3, i32 8)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @STATUS_PRIVILEGE_NOT_HELD, align 8
  %15 = call i32 @ok_ntstatus(i64 %13, i64 %14)
  %16 = load i32, i32* @SE_SYSTEMTIME_PRIVILEGE, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i64 @RtlAdjustPrivilege(i32 %16, i32 %17, i32 %18, i32* %6)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @NT_SUCCESS(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %0
  %24 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %95

25:                                               ; preds = %0
  %26 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %27 = call i64 @NtSetSystemInformation(i32 %26, %struct.TYPE_5__* %3, i32 9)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %30 = call i32 @ok_ntstatus(i64 %28, i64 %29)
  %31 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %32 = call i64 @NtSetSystemInformation(i32 %31, %struct.TYPE_5__* %3, i32 8)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @STATUS_INVALID_PARAMETER_2, align 8
  %35 = call i32 @ok_ntstatus(i64 %33, i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %39 = call i64 @NtSetSystemInformation(i32 %38, %struct.TYPE_5__* %3, i32 8)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @STATUS_SUCCESS, align 8
  %42 = call i32 @ok_ntstatus(i64 %40, i64 %41)
  %43 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %44 = call i64 @NtQuerySystemInformation(i32 %43, %struct.TYPE_6__* %2, i32 12, i32* %5)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @STATUS_SUCCESS, align 8
  %47 = call i32 @ok_ntstatus(i64 %45, i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ok_long(i32 %49, i32 -1)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ok_long(i32 %52, i32 0)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %57 = call i64 @NtSetSystemInformation(i32 %56, %struct.TYPE_5__* %3, i32 8)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @STATUS_SUCCESS, align 8
  %60 = call i32 @ok_ntstatus(i64 %58, i64 %59)
  %61 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %62 = call i64 @NtQuerySystemInformation(i32 %61, %struct.TYPE_6__* %2, i32 12, i32* %5)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @STATUS_SUCCESS, align 8
  %65 = call i32 @ok_ntstatus(i64 %63, i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ok_long(i32 %67, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ok_long(i32 %72, i32 1)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @SystemTimeAdjustmentInformation, align 4
  %81 = call i64 @NtSetSystemInformation(i32 %80, %struct.TYPE_5__* %3, i32 8)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @STATUS_SUCCESS, align 8
  %84 = call i32 @ok_ntstatus(i64 %82, i64 %83)
  %85 = load i32, i32* @SE_SYSTEMTIME_PRIVILEGE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i64 @RtlAdjustPrivilege(i32 %85, i32 %86, i32 %87, i32* %6)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @STATUS_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %25, %23
  ret void
}

declare dso_local i64 @NtQuerySystemInformation(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @NtSetSystemInformation(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ok_ntstatus(i64, i64) #1

declare dso_local i64 @RtlAdjustPrivilege(i32, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
