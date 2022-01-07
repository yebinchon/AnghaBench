; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_ICONHORIZONTALSPACING.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_ICONHORIZONTALSPACING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"testing SPI_ICONHORIZONTALSPACING\0A\00", align 1
@SPI_ICONHORIZONTALSPACING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SPI_ICONHORIZONTALSPACING\00", align 1
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_ICONHORIZONTALSPACING to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_ICONHORIZONTALSPACING() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = load i32, i32* @SPI_ICONHORIZONTALSPACING, align 4
  %6 = call i32 @SystemParametersInfoA(i32 %5, i32 0, i32* %2, i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @test_error_msg(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %27

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call i32 @dotest_spi_iconhorizontalspacing(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %27

17:                                               ; preds = %11
  %18 = call i32 @dotest_spi_iconhorizontalspacing(i32 10)
  %19 = load i32, i32* @SPI_ICONHORIZONTALSPACING, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %22 = call i32 @SystemParametersInfoA(i32 %19, i32 %20, i32* null, i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32*, i32) #1

declare dso_local i32 @test_error_msg(i32, i8*) #1

declare dso_local i32 @dotest_spi_iconhorizontalspacing(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
