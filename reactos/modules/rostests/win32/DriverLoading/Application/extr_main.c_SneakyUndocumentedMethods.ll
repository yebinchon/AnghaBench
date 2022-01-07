; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_main.c_SneakyUndocumentedMethods.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_main.c_SneakyUndocumentedMethods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i32] [i32 10, i32 83, i32 116, i32 97, i32 114, i32 116, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 46, i32 115, i32 121, i32 115, i32 32, i32 118, i32 105, i32 97, i32 32, i32 78, i32 116, i32 83, i32 101, i32 116, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 76, i32 111, i32 97, i32 100, i32 71, i32 100, i32 105, i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 10, i32 0], align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i32] [i32 9, i32 83, i32 116, i32 97, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [86 x i32] [i32 10, i32 83, i32 116, i32 97, i32 114, i32 116, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 46, i32 115, i32 121, i32 115, i32 32, i32 118, i32 105, i32 97, i32 32, i32 78, i32 116, i32 83, i32 101, i32 116, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 69, i32 120, i32 116, i32 101, i32 110, i32 100, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 84, i32 97, i32 98, i32 108, i32 101, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SneakyUndocumentedMethods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SneakyUndocumentedMethods(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ConvertPath(i32 %11, i32* %10)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load i8*, i8** @DRIVER_NAME, align 8
  %16 = call i32 (i8*, ...) @wprintf(i8* bitcast ([81 x i32]* @.str to i8*), i8* %15)
  %17 = call i64 @LoadVia_SystemLoadGdiDriverInformation(i32* %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @wprintf(i8* bitcast ([10 x i32]* @.str.1 to i8*))
  %21 = load i8*, i8** @DRIVER_NAME, align 8
  %22 = call i32 @NtStopDriver(i8* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i8*, i8** @DRIVER_NAME, align 8
  %25 = call i32 (i8*, ...) @wprintf(i8* bitcast ([86 x i32]* @.str.2 to i8*), i8* %24)
  %26 = call i64 @LoadVia_SystemExtendServiceTableInformation(i32* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @wprintf(i8* bitcast ([10 x i32]* @.str.1 to i8*))
  %30 = load i8*, i8** @DRIVER_NAME, align 8
  %31 = call i32 @NtStopDriver(i8* %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ConvertPath(i32, i32*) #2

declare dso_local i32 @wprintf(i8*, ...) #2

declare dso_local i64 @LoadVia_SystemLoadGdiDriverInformation(i32*) #2

declare dso_local i32 @NtStopDriver(i8*) #2

declare dso_local i64 @LoadVia_SystemExtendServiceTableInformation(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
