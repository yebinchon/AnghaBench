; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_LoadVia_SystemExtendServiceTableInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_LoadVia_SystemExtendServiceTableInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@SystemExtendServiceTableInformation = common dso_local global i32 0, align 4
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 120, i32 116, i32 101, i32 110, i32 100, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 84, i32 97, i32 98, i32 108, i32 101, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 99, i32 97, i32 110, i32 32, i32 111, i32 110, i32 108, i32 121, i32 32, i32 98, i32 101, i32 32, i32 117, i32 115, i32 101, i32 100, i32 32, i32 105, i32 110, i32 32, i32 107, i32 109, i32 111, i32 100, i32 101, i32 46, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 120, i32 116, i32 101, i32 110, i32 100, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 84, i32 97, i32 98, i32 108, i32 101, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 105, i32 110, i32 99, i32 111, i32 114, i32 114, i32 101, i32 99, i32 116, i32 108, i32 121, i32 32, i32 108, i32 111, i32 97, i32 100, i32 101, i32 100, i32 32, i32 116, i32 104, i32 101, i32 32, i32 100, i32 114, i32 105, i32 118, i32 101, i32 114, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [65 x i32] [i32 76, i32 111, i32 97, i32 100, i32 86, i32 105, i32 97, i32 95, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 120, i32 116, i32 101, i32 110, i32 100, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 84, i32 97, i32 98, i32 108, i32 101, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 91, i32 37, i32 108, i32 117, i32 93, i32 32, i32 45, i32 32, i32 48, i32 120, i32 37, i32 120, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadVia_SystemExtendServiceTableInformation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @RtlInitUnicodeString(i32* %5, i32 %8)
  store i32 4, i32* %6, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i64 @SetPrivilege(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load i32, i32* @SystemExtendServiceTableInformation, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @NtSetSystemInformation(i32 %14, i32* %5, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @STATUS_PRIVILEGE_NOT_HELD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (i8*, ...) @wprintf(i8* bitcast ([64 x i32]* @.str to i8*))
  br label %37

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @STATUS_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @wprintf(i8* bitcast ([67 x i32]* @.str.1 to i8*))
  %28 = call i32 @NtUnloadDriver(i32* %5)
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @RtlNtStatusToDosError(i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (i8*, ...) @wprintf(i8* bitcast ([65 x i32]* @.str.2 to i8*), i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @SetPrivilege(i32 %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i64 @SetPrivilege(i32) #1

declare dso_local i64 @NtSetSystemInformation(i32, i32*, i32) #1

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @NtUnloadDriver(i32*) #1

declare dso_local i32 @RtlNtStatusToDosError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
