; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_ConfigurePort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_ConfigurePort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@winetest_interactive = common dso_local global i64 0, align 8
@portname_com1W = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"returned %d with %u\0A\00", align 1
@portname_lpt1W = common dso_local global i32* null, align 8
@portname_fileW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ConfigurePort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ConfigurePort() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @winetest_interactive, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = load i32*, i32** @portname_com1W, align 8
  %7 = call i32 @pConfigurePort(i32* null, i32 0, i32* %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (...) @GetLastError()
  %10 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32*, i32** @portname_lpt1W, align 8
  %13 = call i32 @pConfigurePort(i32* null, i32 0, i32* %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = call i32 @SetLastError(i32 -559038737)
  %18 = load i32*, i32** @portname_fileW, align 8
  %19 = call i32 @pConfigurePort(i32* null, i32 0, i32* %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pConfigurePort(i32*, i32, i32*) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
