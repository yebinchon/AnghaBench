; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvOpenPort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvOpenPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emptyW = common dso_local global i32* null, align 8
@SERVER_ACCESS_ADMINISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"returned %d with %u and %p (expected '!= 0')\0A\00", align 1
@portname_lpt1W = common dso_local global i32* null, align 8
@SERVER_ALL_ACCESS = common dso_local global i32 0, align 4
@portname_fileW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_XcvOpenPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_XcvOpenPort() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  store i64 3735928559, i64* %2, align 8
  %4 = load i32*, i32** @emptyW, align 8
  %5 = load i32, i32* @SERVER_ACCESS_ADMINISTER, align 4
  %6 = call i64 @pXcvOpenPort(i32* %4, i32 %5, i64* %2)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = call i32 (...) @GetLastError()
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @ok(i64 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %9, i64 %10)
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @pXcvClosePort(i64 %15)
  br label %17

17:                                               ; preds = %14, %0
  %18 = call i32 @SetLastError(i32 -559038737)
  store i64 3735928559, i64* %2, align 8
  %19 = load i32*, i32** @emptyW, align 8
  %20 = call i64 @pXcvOpenPort(i32* %19, i32 0, i64* %2)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = call i32 (...) @GetLastError()
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @ok(i64 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23, i64 %24)
  %26 = load i64, i64* %1, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @pXcvClosePort(i64 %29)
  br label %31

31:                                               ; preds = %28, %17
  %32 = call i32 @SetLastError(i32 -559038737)
  store i64 3735928559, i64* %2, align 8
  %33 = load i32*, i32** @portname_lpt1W, align 8
  %34 = load i32, i32* @SERVER_ALL_ACCESS, align 4
  %35 = call i64 @pXcvOpenPort(i32* %33, i32 %34, i64* %2)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = call i32 (...) @GetLastError()
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @ok(i64 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38, i64 %39)
  %41 = load i64, i64* %1, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @pXcvClosePort(i64 %44)
  br label %46

46:                                               ; preds = %43, %31
  %47 = call i32 @SetLastError(i32 -559038737)
  store i64 3735928559, i64* %2, align 8
  %48 = load i32*, i32** @portname_fileW, align 8
  %49 = load i32, i32* @SERVER_ALL_ACCESS, align 4
  %50 = call i64 @pXcvOpenPort(i32* %48, i32 %49, i64* %2)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = call i32 (...) @GetLastError()
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @ok(i64 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %53, i64 %54)
  %56 = load i64, i64* %1, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @pXcvClosePort(i64 %59)
  br label %61

61:                                               ; preds = %58, %46
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pXcvOpenPort(i32*, i32, i64*) #1

declare dso_local i32 @ok(i64, i8*, i64, i32, i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pXcvClosePort(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
