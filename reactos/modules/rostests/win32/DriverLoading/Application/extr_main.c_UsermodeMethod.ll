; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_main.c_UsermodeMethod.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_main.c_UsermodeMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i32] [i32 10, i32 83, i32 116, i32 97, i32 114, i32 116, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 46, i32 115, i32 121, i32 115, i32 32, i32 118, i32 105, i32 97, i32 32, i32 116, i32 104, i32 101, i32 32, i32 83, i32 67, i32 77, i32 10, i32 0], align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i32] [i32 91, i32 37, i32 108, i32 117, i32 93, i32 32, i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 115, i32 116, i32 97, i32 114, i32 116, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 9, i32 83, i32 116, i32 97, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [29 x i32] [i32 83, i32 116, i32 111, i32 112, i32 112, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 46, i32 115, i32 121, i32 115, i32 32, i32 118, i32 105, i32 97, i32 32, i32 116, i32 104, i32 101, i32 32, i32 83, i32 67, i32 77, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [25 x i32] [i32 91, i32 37, i32 108, i32 117, i32 93, i32 32, i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 115, i32 116, i32 111, i32 112, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 9, i32 83, i32 116, i32 111, i32 112, i32 112, i32 101, i32 100, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UsermodeMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UsermodeMethod(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i8*, i8** @DRIVER_NAME, align 8
  %5 = call i32 (i8*, ...) @wprintf(i8* bitcast ([30 x i32]* @.str to i8*), i8* %4)
  %6 = load i8*, i8** @DRIVER_NAME, align 8
  %7 = call i32 @StartDriver(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @GetLastError()
  %11 = load i8*, i8** @DRIVER_NAME, align 8
  %12 = call i32 (i8*, ...) @wprintf(i8* bitcast ([26 x i32]* @.str.1 to i8*), i32 %10, i8* %11)
  %13 = load i8*, i8** @DRIVER_NAME, align 8
  %14 = call i32 @UnregisterDriver(i8* %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @wprintf(i8* bitcast ([10 x i32]* @.str.2 to i8*))
  %18 = load i8*, i8** @DRIVER_NAME, align 8
  %19 = call i32 (i8*, ...) @wprintf(i8* bitcast ([29 x i32]* @.str.3 to i8*), i8* %18)
  %20 = load i8*, i8** @DRIVER_NAME, align 8
  %21 = call i32 @StopDriver(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = call i32 (...) @GetLastError()
  %25 = load i8*, i8** @DRIVER_NAME, align 8
  %26 = call i32 (i8*, ...) @wprintf(i8* bitcast ([25 x i32]* @.str.4 to i8*), i32 %24, i8* %25)
  %27 = load i8*, i8** @DRIVER_NAME, align 8
  %28 = call i32 @UnregisterDriver(i8* %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %16
  %31 = call i32 (i8*, ...) @wprintf(i8* bitcast ([10 x i32]* @.str.5 to i8*))
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %23, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @StartDriver(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @UnregisterDriver(i8*) #1

declare dso_local i32 @StopDriver(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
