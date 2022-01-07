; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_LoadVia_SystemLoadGdiDriverInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_LoadVia_SystemLoadGdiDriverInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SystemLoadGdiDriverInformation = common dso_local global i32 0, align 4
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 76, i32 111, i32 97, i32 100, i32 71, i32 100, i32 105, i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 99, i32 97, i32 110, i32 32, i32 111, i32 110, i32 108, i32 121, i32 32, i32 98, i32 101, i32 32, i32 117, i32 115, i32 101, i32 100, i32 32, i32 105, i32 110, i32 32, i32 107, i32 109, i32 111, i32 100, i32 101, i32 46, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 76, i32 111, i32 97, i32 100, i32 71, i32 100, i32 105, i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 105, i32 110, i32 99, i32 111, i32 114, i32 114, i32 101, i32 99, i32 116, i32 108, i32 121, i32 32, i32 108, i32 111, i32 97, i32 100, i32 101, i32 100, i32 32, i32 116, i32 104, i32 101, i32 32, i32 100, i32 114, i32 105, i32 118, i32 101, i32 114, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [53 x i32] [i32 76, i32 111, i32 97, i32 100, i32 86, i32 105, i32 97, i32 95, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 76, i32 111, i32 97, i32 100, i32 71, i32 100, i32 105, i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 91, i32 37, i32 108, i32 117, i32 93, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadVia_SystemLoadGdiDriverInformation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @ZeroMemory(%struct.TYPE_4__* %5, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @RtlInitUnicodeString(i32* %10, i32 %11)
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i64 @SetPrivilege(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load i32, i32* @SystemLoadGdiDriverInformation, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @NtSetSystemInformation(i32 %17, %struct.TYPE_4__* %5, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @STATUS_PRIVILEGE_NOT_HELD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @wprintf(i8* bitcast ([59 x i32]* @.str to i8*))
  br label %40

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @STATUS_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @wprintf(i8* bitcast ([62 x i32]* @.str.1 to i8*))
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %32 = call i32 @NtUnloadDriver(i32* %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %25
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @RtlNtStatusToDosError(i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @wprintf(i8* bitcast ([53 x i32]* @.str.2 to i8*), i32 %37)
  br label %39

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i64 @SetPrivilege(i32 %41)
  br label %43

43:                                               ; preds = %40, %1
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i64 @SetPrivilege(i32) #1

declare dso_local i64 @NtSetSystemInformation(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @NtUnloadDriver(i32*) #1

declare dso_local i32 @RtlNtStatusToDosError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
