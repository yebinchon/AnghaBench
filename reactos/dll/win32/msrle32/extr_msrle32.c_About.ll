; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_About.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_About.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSRLE32_hModule = common dso_local global i64 0, align 8
@IDS_NAME = common dso_local global i32 0, align 4
@IDS_ABOUT = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@ICERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @About to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @About(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i32], align 16
  %6 = alloca [128 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @MSRLE32_hModule, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* @MSRLE32_hModule, align 8
  %12 = load i32, i32* @IDS_NAME, align 4
  %13 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = call i32 @LoadStringW(i64 %11, i32 %12, i32* %13, i32 %15)
  %17 = load i64, i64* @MSRLE32_hModule, align 8
  %18 = load i32, i32* @IDS_ABOUT, align 4
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = call i32 @LoadStringW(i64 %17, i32 %18, i32* %19, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %26 = load i32, i32* @MB_OK, align 4
  %27 = load i32, i32* @MB_ICONINFORMATION, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @MessageBoxW(i32 %23, i32* %24, i32* %25, i32 %28)
  %30 = load i32, i32* @ICERR_OK, align 4
  ret i32 %30
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LoadStringW(i64, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @MessageBoxW(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
